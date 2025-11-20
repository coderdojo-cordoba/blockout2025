#!/usr/bin/env bash
set -euo pipefail

# Optional: set RELEASE=1 to build the stripped release binary

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGELIB_DIR="$ROOT_DIR/ImageLib/src"
BLOCKOUT_DIR="$ROOT_DIR/BlockOut"
IMAGES_DIR="$BLOCKOUT_DIR/images"
SOUNDS_DIR="$BLOCKOUT_DIR/sounds"

create_png() {
  local path="$1"
  local max_placeholder_size=1000
  local size=0
  if [[ -f "$path" ]]; then
    size=$(stat -c %s "$path" 2>/dev/null || echo 0)
    if (( size > max_placeholder_size )); then
      return
    fi
  fi
  mkdir -p "$(dirname "$path")"
  python3 - <<'PY' "$path"
import sys, os, struct, zlib, binascii
path = sys.argv[1]
def chunk(t, d):
    return struct.pack(">I", len(d)) + t + d + struct.pack(">I", binascii.crc32(t + d) & 0xffffffff)
ihdr = struct.pack(">IIBBBBB", 1, 1, 8, 6, 0, 0, 0)
raw = b"\x00" + b"\x00\x00\x00\x00"  # filter byte + RGBA pixel
data = (
    b"\x89PNG\r\n\x1a\n"
    + chunk(b"IHDR", ihdr)
    + chunk(b"IDAT", zlib.compress(raw, 9))
    + chunk(b"IEND", b"")
)
with open(path, "wb") as f:
    f.write(data)
PY
}

create_wav() {
  local path="$1"
  local max_placeholder_size=1000
  local size=0
  if [[ -f "$path" ]]; then
    size=$(stat -c %s "$path" 2>/dev/null || echo 0)
    if (( size > max_placeholder_size )); then
      return
    fi
  fi
  mkdir -p "$(dirname "$path")"
  python3 - <<'PY' "$path"
import os, sys, wave, struct
path = sys.argv[1]
frames = int(44100 * 0.25)  # 250ms silence
with wave.open(path, 'w') as w:
    w.setnchannels(2)
    w.setsampwidth(2)
    w.setframerate(44100)
    frame = struct.pack('<hh', 0, 0)
    w.writeframes(frame * frames)
PY
}

ensure_assets() {
  mkdir -p "$IMAGES_DIR" "$SOUNDS_DIR"
  local pngs=(
    background.png background2.png background3.png spark.png sparka.png
    menuback.png menucredits.png menufont.png menufont2.png online.png onlinea.png
    menupit.png marbleg.png marble.png star_crystal_grid.png sprites.png spritesa.png
    gameover.png gameovera.png font.png
  )
  local wavs=(
    blub.wav wozz.wav tchh.wav line.wav level.wav empty.wav welldone.wav
    line2.wav level2.wav empty2.wav welldone2.wav hit.wav
  )
  for f in "${pngs[@]}"; do
    create_png "$IMAGES_DIR/$f"
  done
  for f in "${wavs[@]}"; do
    create_wav "$SOUNDS_DIR/$f"
  done
  # Placeholder music to avoid load errors if credits music is triggered
  if [[ ! -f "$SOUNDS_DIR/music.ogg" ]]; then
    touch "$SOUNDS_DIR/music.ogg"
  fi
}

detect_audio_driver() {
  if [[ -n "${SDL_AUDIODRIVER:-}" ]]; then
    echo "Using preset SDL_AUDIODRIVER=$SDL_AUDIODRIVER"
    return
  fi
  if command -v pactl >/dev/null 2>&1 && pactl info >/dev/null 2>&1; then
    export SDL_AUDIODRIVER=pulseaudio
    echo "Detected PulseAudio; using SDL_AUDIODRIVER=pulseaudio"
  elif command -v aplay >/dev/null 2>&1 && aplay -l >/dev/null 2>&1; then
    export SDL_AUDIODRIVER=alsa
    echo "Using SDL_AUDIODRIVER=alsa (PulseAudio not detected)"
  else
    export SDL_AUDIODRIVER=dummy
    echo "No audio backend detected; using SDL_AUDIODRIVER=dummy"
  fi
}

detect_gl_mode() {
  if [[ -n "${LIBGL_ALWAYS_SOFTWARE:-}" ]]; then
    echo "Using preset LIBGL_ALWAYS_SOFTWARE=$LIBGL_ALWAYS_SOFTWARE"
    return
  fi
  if [[ -c /dev/dri/renderD128 && -r /dev/dri/renderD128 ]]; then
    echo "Using hardware GL (/dev/dri/renderD128 available)"
  else
    export LIBGL_ALWAYS_SOFTWARE=1
    echo "No direct GPU device available; forcing LIBGL_ALWAYS_SOFTWARE=1"
  fi
}

echo "Building ImageLib..."
make -C "$IMAGELIB_DIR"

build_args=("_linux64=1")
if [[ "${RELEASE:-0}" == "1" ]]; then
  build_args+=("_release=1")
fi

echo "Building BlockOut (${build_args[*]})..."
make -C "$BLOCKOUT_DIR" "${build_args[@]}"

export BL2_HOME="${BL2_HOME:-$BLOCKOUT_DIR}"
data_dir="${HOME}/.bl2"
if ! mkdir -p "$data_dir" 2>/dev/null; then
  # Fall back to a local data directory if HOME is not writable (e.g., sandboxed)
  data_dir="$ROOT_DIR/.bl2"
  mkdir -p "$data_dir"
  export HOME="$ROOT_DIR"
fi

echo "Using BL2_HOME=$BL2_HOME"
echo "Using data directory=$data_dir"
echo "Ensuring placeholder assets exist..."
ensure_assets

detect_audio_driver
detect_gl_mode

echo "Launching BlockOut..."
(cd "$BLOCKOUT_DIR" && exec "$BLOCKOUT_DIR/blockout" "$@")

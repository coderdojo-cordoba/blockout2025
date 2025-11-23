# BlockOut II v2.5

![BlockOut II Gameplay](../gameplay-screenshot.png)

**Un joc de puzle estil Tetris 3D**

BlockOut II és una adaptació OpenGL del joc original BlockOut per a DOS editat per California Dreams el 1989. BlockOut II té les mateixes característiques que el joc original amb poques millores gràfiques. El càlcul de puntuació també és gairebé similar al joc original. BlockOut II ha estat dissenyat per un jugador addicte per a jugadors addictes.

Gaudeix de BlockOut II...

---

*Blockout® és una marca registrada de Kadon Enterprises, Inc., utilitzada amb permís. Aquesta empresa nord-americana produeix conjunts pràctics de policubs des de 1980. [www.gamepuzzles.com](http://www.gamepuzzles.com)*

---

## 🌐 Pàgina Oficial

**http://www.blockout.net/blockout2**

## 🌍 Idiomes / Idiomas / Langues

- [English](../README.md)
- [Español](README.es.md)
- [Português](README.pt.md)
- [Français](README.fr.md)
- [Italiano](README.it.md)
- [Deutsch](README.de.md)
- [Polski](README.pl.md)
- [Română](README.ro.md)
- [中文](README.zh.md)
- [日本語](README.ja.md)
- [Gaeilge](README.ga.md)
- [Ελληνικά](README.el.md)
- [Nederlands](README.nl.md)
- [Dansk](README.da.md)
- [Català](README.ca.md) (aquest fitxer)
- [Norsk](README.no.md)
- [Čeština](README.cs.md)
- [Suomi](README.fi.md)
- [Svenska](README.sv.md)
- [Eesti](README.et.md)
- [Türkçe](README.tr.md)
- [Afrikaans](README.af.md)
- [العربية](README.ar.md)

## 🤝 Uneix-te al Nostre Equip Internacional!

**Cridem a tots els joves desenvolupadors de CoderDojo i Code Club!** 🌍

Estem construint un equip internacional per fer BlockOut II accessible a jugadors de tot el món en **23 idiomes**. Tant si ets principiant com programador experimentat, hi ha un lloc per a tu!

**El que aprendràs:**
- 🌐 Internacionalització (i18n) i localització
- 💻 Desenvolupament de jocs en C++
- 🔧 Sistemes de compilació i CI/CD
- 🤝 Col·laboració global

**Com contribuir:**
- 📝 Tradueix el joc al teu idioma
- 🎨 Crea fonts i gràfics localitzats
- 🧪 Prova en diferents plataformes
- 🔨 Millora el sistema de compilació
- 🎮 Afegeix noves funcionalitats

👉 **[Llegeix CONTRIBUTING.md](../CONTRIBUTING.md) per començar!**

## 📦 Descàrregues

Obteniu la darrera versió per a la vostra plataforma des de la [pàgina de Versions](https://github.com/coderdojo-cordoba/blockout2025/releases):

- **Windows**: `blockout-windows-*.zip` - Extreu i executa `Blockout.exe`
- **Linux (Genèric)**: `blockout-linux-x64-*.tar.gz` - Extreu i executa `./blockout/blockout`
- **macOS**: `blockout-macos-*.tar.gz` - Extreu i executa el binari
- **Ubuntu/Debian**: `blockout_*.deb` - Instal·la amb `sudo dpkg -i blockout_*.deb`
- **Fedora/RHEL**: `blockout-*.rpm` - Instal·la amb `sudo dnf install blockout-*.rpm`
- **Arch Linux**: `blockout-*.pkg.tar.zst` - Instal·la amb `sudo pacman -U blockout-*.pkg.tar.zst`

## 🎮 Requisits del Sistema

### Windows
- Suport OpenGL

### Linux
**Temps d'execució:**
- `libgl1-mesa`
- `libglu1-mesa`
- `libxext6`
- `libsdl1.2`
- `libsdl-mixer1.2`

**Dependències de Compilació:**
- `build-essential`
- `libgl1-mesa-dev`
- `libglu1-mesa-dev`
- `libxext-dev`
- `libsdl1.2-dev`
- `libsdl-mixer1.2-dev`
- `libasound2-dev`

### macOS
- SDL 1.2 (via sdl12-compat)
- SDL_mixer 1.2
- OpenGL

## 📝 Historial de Versions

### 2.5
- Suport de 64 bits
- OpenGL ara s'utilitza tant a Linux com a Windows
- Petites millores gràfiques
- Millores del mode de pràctica
- Mode de demostració millorat (el jugador Bot juga millor)
- Directori de dades local mogut del directori d'instal·lació al directori "AppData"

### 2.4
- Afegit limitador de fotogrames
- Afegit mode de demostració
- Afegit mode de pràctica
- Corregit error de reproducció
- Corregit generador aleatori (conjunt de blocs FLAT)
- Corregit error de pantalla completa (Linux)

### 2.3
- Afegit nom de jugador/rang durant la reproducció
- Afegits nous caràcters de puntuació
- Petit efecte quan la rotació està bloquejada
- Corregit "No es pot obrir blX.bl2replay per escriure"
- Nou estil (Marbre/Arcade)
- Corregit bloqueig en prémer [Esc]
- Animació del pou quan el joc s'acaba
- Saltar a la pàgina de Detalls de Puntuació després del final del joc
- Afegida preconfiguració de so DOS blockout
- Nou aleatoritzador

### 2.2
- Afegit control de tecles NUMPAD
- Transparència de blocs configurable amb control lliscant
- Avortar demostració d'inici de menú amb [Esc]
- Afegit pou buit (Flush) als detalls de puntuació
- Base de dades de puntuacions en línia
- Reproducció
- Afegida pàgina de crèdits
- Altres actualitzacions menors

### 2.1
- Corregit algorisme de descens de blocs
- Augmentat lleugerament el temps de caiguda
- Millora de l'ajust de la velocitat de moviment

### 2.0
- Versió inicial

## 🔧 Compilació des del Codi Font

### Ubuntu/Debian

**Automatitzat:**
```bash
sudo ./install-ubuntu-deps.sh
./build-and-run.sh
```

**Manual:**
```bash
# Instal·la dependències
sudo apt-get install build-essential libgl1-mesa-dev libglu1-mesa-dev \
  libxext-dev libsdl1.2-dev libsdl-mixer1.2-dev libasound2-dev

# Compila ImageLib
make -C ImageLib/src

# Compila BlockOut
make -C BlockOut _linux64=1 _release=1

# Executa
cd BlockOut
./blockout
```

### Windows

1. Instal·la Microsoft Visual Studio 2022 (o 2019/2017)
2. Instal·la biblioteques de desenvolupament SDL 1.2.15 des de [libsdl.org](http://www.libsdl.org)
3. Instal·la biblioteques de desenvolupament SDL_mixer 1.2.12 des de [libsdl.org](http://www.libsdl.org/projects/SDL_mixer/release-1.2.html)
4. Estableix els camins include i lib apropiats a les propietats del projecte
5. Compila la solució

### macOS

```bash
# Instal·la dependències via Homebrew
brew install sdl12-compat pkg-config

# Compila SDL_mixer 1.2 des del codi font (veure .github/workflows/build-macos-brew.yml)

# Compila ImageLib
make -C ImageLib/src

# Compila BlockOut
make -C BlockOut _macos=1

# Executa
cd BlockOut
./blockout
```

## 🤖 GitHub Actions CI/CD

Aquest repositori utilitza GitHub Actions per a la compilació i publicació automatitzades a totes les plataformes.

### Fluxos de Treball Disponibles

#### Fluxos de Treball de Compilació (Automatitzats)

- **`build-windows.yml`** - Compila binaris Windows x64
- **`build-macos-brew.yml`** - Compila binaris macOS
- **`build-fedora-rpm.yml`** - Compila paquets RPM
- **`build-arch-pkg.yml`** - Compila paquets Arch Linux
- **`package-deb.yml`** - Compila paquets Debian

#### Flux de Treball de Publicació (Manual)

- **`create-release.yml`** - Crea una nova versió

### Procés de Publicació

1. Assegura't que tots els canvis s'han fusionat a `development` i provat
2. Ves a GitHub Actions → Flux de treball "Create Release"
3. Fes clic a "Run workflow"
4. Introdueix el número de versió (p. ex. `v2.5.0`)
5. El flux de treball fusionarà, etiquetar à, compilarà i publicarà

## 🎯 Característiques del Joc

### Sistema de Reproducció
Per a cada puntuació alta que fas, es crea un fitxer `.bl2replay` al directori de reproducció.

### Càrrega de Puntuacions
Carrega les teves puntuacions altes a la base de dades en línia des de la pàgina de Detalls de Puntuació.

### Aleatoritzador
BlockOut II utilitza un aleatoritzador de bossa que genera una seqüència de totes les peces possibles permutades aleatòriament.

### Limitador de Fotogrames
Per sincronitzar les animacions amb l'esborrat vertical del monitor, selecciona VSync a la configuració del limitador de fotogrames.

## 📜 Llicència

Aquest programa és programari lliure; podeu redistribuir-lo i/o modificar-lo sota els termes de la Llicència Pública General GNU.

## 👤 Autor

Jean-Luc PONS (jlp_38@yahoo.com)

## 🔗 Enllaços

- [Lloc Web Oficial](http://www.blockout.net/blockout2)
- [Repositori GitHub](https://github.com/coderdojo-cordoba/blockout2025)
- [Kadon Enterprises](http://www.gamepuzzles.com)

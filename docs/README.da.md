# BlockOut II v2.5

![BlockOut II Gameplay](../gameplay-screenshot.png)

**Et 3D Tetris-lignende puslespil**

BlockOut II er en OpenGL-tilpasning af det originale BlockOut DOS-spil udgivet af California Dreams i 1989. BlockOut II har de samme funktioner som det originale spil med få grafiske forbedringer. Scoreberegning er også næsten lig det originale spil. BlockOut II er designet af en afhængig spiller til afhængige spillere.

Hav det sjovt med BlockOut II...

---

*Blockout® er et registreret varemærke tilhørende Kadon Enterprises, Inc., brugt med tilladelse. Dette amerikanske firma producerer praktiske sæt af polycubes siden 1980. [www.gamepuzzles.com](http://www.gamepuzzles.com)*

---

## 🌐 Officiel Hjemmeside

**http://www.blockout.net/blockout2**

## 🌍 Sprog / Idiomas / Langues

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
- [Dansk](README.da.md) (denne fil)
- [Català](README.ca.md)
- [Norsk](README.no.md)
- [Čeština](README.cs.md)
- [Suomi](README.fi.md)
- [Svenska](README.sv.md)
- [Eesti](README.et.md)
- [Türkçe](README.tr.md)
- [Afrikaans](README.af.md)
- [العربية](README.ar.md)

## 🤝 Bliv en Del af Vores Internationale Team!

**Opfordring til alle unge udviklere fra CoderDojo og Code Club!** 🌍

Vi bygger et internationalt team for at gøre BlockOut II tilgængeligt for spillere over hele verden på **23 sprog**. Uanset om du er begynder eller erfaren programmør, er der plads til dig!

**Hvad du vil lære:**
- 🌐 Internationalisering (i18n) og lokalisering
- 💻 Spiludvikling i C++
- 🔧 Build-systemer og CI/CD
- 🤝 Global samarbejde

**Hvordan du kan bidrage:**
- 📝 Oversæt spillet til dit sprog
- 🎨 Opret lokaliserede skrifttyper og grafik
- 🧪 Test på forskellige platforme
- 🔨 Forbedre build-systemet
- 🎮 Tilføj nye funktioner

👉 **[Læs CONTRIBUTING.md](../CONTRIBUTING.md) for at komme i gang!**

## 📦 Downloads

Hent den seneste version til din platform fra [Releases-siden](https://github.com/coderdojo-cordoba/blockout2025/releases):

- **Windows**: `blockout-windows-*.zip` - Udpak og kør `Blockout.exe`
- **Linux (Generisk)**: `blockout-linux-x64-*.tar.gz` - Udpak og kør `./blockout/blockout`
- **macOS**: `blockout-macos-*.tar.gz` - Udpak og kør binærfilen
- **Ubuntu/Debian**: `blockout_*.deb` - Installer med `sudo dpkg -i blockout_*.deb`
- **Fedora/RHEL**: `blockout-*.rpm` - Installer med `sudo dnf install blockout-*.rpm`
- **Arch Linux**: `blockout-*.pkg.tar.zst` - Installer med `sudo pacman -U blockout-*.pkg.tar.zst`

## 🎮 Systemkrav

### Windows
- OpenGL-understøttelse

### Linux
**Runtime:**
- `libgl1-mesa`
- `libglu1-mesa`
- `libxext6`
- `libsdl1.2`
- `libsdl-mixer1.2`

**Build-afhængigheder:**
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

## 📝 Versionshistorik

### 2.5
- 64-bit understøttelse
- OpenGL bruges nu på både Linux og Windows
- Små grafiske forbedringer
- Forbedringer af øvelsestilstand
- Forbedret demotilstand (Bot-spiller spiller bedre)
- Lokal datamappe flyttet fra installationsmappe til "AppData"-mappe

### 2.4
- Tilføjet frame limiter
- Tilføjet demotilstand
- Tilføjet øvelsestilstand
- Rettet replay-fejl
- Rettet tilfældig generator (FLAT-blokkesæt)
- Rettet fuldskærmsfejl (Linux)

### 2.3
- Tilføjet spiller/rangnavn ved genafspilning
- Nye tegnsætningstegn tilføjet
- Lille effekt når rotation er blokeret
- Rettet "Kan ikke åbne blX.bl2replay til skrivning"
- Ny stil (Marmor/Arkade)
- Rettet nedbrud ved tryk på [Esc]
- Hul-animation når spillet er slut
- Spring til Score Detaljer-side efter spillets afslutning
- Tilføjet DOS blockout lydforudindstilling
- Ny randomizer

### 2.2
- NUMPAD-tastkontrol tilføjet
- Blokgennemsigtighed konfigurerbar med skyder
- Afbryd menustart-demo med [Esc]
- Tomt hul (Flush) i scoredetaljer tilføjet
- Online scoredatabase
- Genafspilning
- Credits-side tilføjet
- Andre mindre opdateringer

### 2.1
- Rettet blokfaldsalgoritme
- Øget faldtid en smule
- Forbedret justering af bevægelseshastighed

### 2.0
- Første udgivelse

## 🔧 Bygning fra Kilde

### Ubuntu/Debian

**Automatiseret:**
```bash
sudo ./install-ubuntu-deps.sh
./build-and-run.sh
```

**Manuel:**
```bash
# Installer afhængigheder
sudo apt-get install build-essential libgl1-mesa-dev libglu1-mesa-dev \
  libxext-dev libsdl1.2-dev libsdl-mixer1.2-dev libasound2-dev

# Byg ImageLib
make -C ImageLib/src

# Byg BlockOut
make -C BlockOut _linux64=1 _release=1

# Kør
cd BlockOut
./blockout
```

### Windows

1. Installer Microsoft Visual Studio 2022 (eller 2019/2017)
2. Installer SDL 1.2.15 udviklingsbiblioteker fra [libsdl.org](http://www.libsdl.org)
3. Installer SDL_mixer 1.2.12 udviklingsbiblioteker fra [libsdl.org](http://www.libsdl.org/projects/SDL_mixer/release-1.2.html)
4. Indstil passende include- og lib-stier i projektegenskaber
5. Byg løsningen

### macOS

```bash
# Installer afhængigheder via Homebrew
brew install sdl12-compat pkg-config

# Byg SDL_mixer 1.2 fra kilde (se .github/workflows/build-macos-brew.yml)

# Byg ImageLib
make -C ImageLib/src

# Byg BlockOut
make -C BlockOut _macos=1

# Kør
cd BlockOut
./blockout
```

## 🤖 GitHub Actions CI/CD

Dette repository bruger GitHub Actions til automatiseret bygning og udgivelse på alle platforme.

### Tilgængelige Workflows

#### Build Workflows (Automatiseret)

- **`build-windows.yml`** - Bygger Windows x64 binære filer
- **`build-macos-brew.yml`** - Bygger macOS binære filer
- **`build-fedora-rpm.yml`** - Bygger RPM-pakker
- **`build-arch-pkg.yml`** - Bygger Arch Linux-pakker
- **`package-deb.yml`** - Bygger Debian-pakker

#### Release Workflow (Manuel)

- **`create-release.yml`** - Opretter en ny udgivelse

### Udgivelsesproces

1. Sørg for at alle ændringer er flettet til `development` og testet
2. Gå til GitHub Actions → "Create Release" workflow
3. Klik på "Run workflow"
4. Indtast versionsnummer (f.eks. `v2.5.0`)
5. Workflowet vil flette, tagge, bygge og udgive

## 🎯 Spil Funktioner

### Genafspilningssystem
For hver høj score du laver, oprettes en `.bl2replay`-fil i genafspilningsmappen.

### Score Upload
Upload dine høje scorer til online-databasen fra Score Detaljer-siden.

### Randomizer
BlockOut II bruger en pose-randomizer, der genererer en sekvens af alle mulige brikker tilfældigt permuteret.

### Frame Limiter
For at synkronisere animationer med din monitors vertikale blanking, vælg VSync i frame limiter-indstillingerne.

## 📜 Licens

Dette program er fri software; du kan redistribuere det og/eller modificere det under betingelserne i GNU General Public License.

## 👤 Forfatter

Jean-Luc PONS (jlp_38@yahoo.com)

## 🔗 Links

- [Officiel Hjemmeside](http://www.blockout.net/blockout2)
- [GitHub Repository](https://github.com/coderdojo-cordoba/blockout2025)
- [Kadon Enterprises](http://www.gamepuzzles.com)

# 🌍 Contributing to BlockOut II - Join Our Global Team!

![BlockOut II Gameplay](gameplay-screenshot.png)

## 👋 Welcome Young Developers!

Are you part of **CoderDojo**, **Code Club**, or just passionate about coding and gaming? We invite you to join our international team working on **BlockOut II** - a classic 3D puzzle game that's being modernized for players around the world!

This project is perfect for **teenagers and young developers** who want to:
- 🌐 Learn about **internationalization (i18n)** and making software accessible globally
- 💻 Work with **real-world C++ code** in a fun gaming project
- 🤝 Collaborate with developers from different countries
- 🎮 See your contributions in a game played by people worldwide
- 📚 Learn about **build systems**, **CI/CD**, and **cross-platform development**

---

## 🎯 What is BlockOut II?

BlockOut II is a 3D Tetris-style puzzle game - imagine Tetris, but in three dimensions! Originally created in 1989, we're bringing it to modern platforms (Windows, Linux, macOS) and making it accessible to players in **23 languages**.

**The Challenge**: We need your help to complete the internationalization so players everywhere can enjoy the game in their native language!

---

## ✨ What We've Accomplished So Far

Our team has made amazing progress:

### 🏗️ Infrastructure Built
- ✅ **Internationalization System**: Implemented using GNU gettext (the industry-standard i18n library)
- ✅ **23 Language Support**: Framework ready for English, Spanish, Portuguese, French, Italian, German, Polish, Romanian, Chinese, Japanese, Irish, Greek, Dutch, Danish, Catalan, Norwegian, Czech, Finnish, Swedish, Estonian, Turkish, Afrikaans, and Arabic
- ✅ **Documentation in 23 Languages**: README files translated for all supported languages
- ✅ **CI/CD Pipeline**: Automated builds for Windows, Linux (Ubuntu, Fedora, Arch), and macOS
- ✅ **Cross-Platform Packages**: DEB, RPM, PKG, ZIP, and TAR.GZ packages automatically generated

### 🔧 Technical Implementation
- ✅ **I18n.cpp Module**: Complete internationalization engine with:
  - Automatic language detection from system locale
  - Runtime language switching capability
  - Support for localized assets (fonts, images)
  - 23 language codes and display names
- ✅ **Translation Files Started**: Spanish, Portuguese, and French `.po` files with ~100 strings each
- ✅ **Build System Integration**: Makefiles and GitHub Actions configured for all platforms

---

## 🚀 The Challenges Ahead - Where You Can Help!

Here's where we need **YOUR** help to make BlockOut II truly international:

### 🌐 Challenge 1: Complete the Translations

**What's needed**: Translate game strings to all 23 languages

**Current Status**:
- ✅ Spanish (es.po) - ~100 strings translated
- ✅ Portuguese (pt.po) - ~100 strings translated  
- ✅ French (fr.po) - ~100 strings translated
- ❌ **20 languages need translation files created**

**What you'll learn**:
- How `.po` (Portable Object) files work
- Using translation tools like Poedit or web-based platforms
- Understanding context in software localization
- Working with UTF-8 and character encodings

**Difficulty**: 🟢 Beginner-friendly (especially if you speak the language!)

### 🎨 Challenge 2: Localized Font Support

**What's needed**: Create font textures that support special characters for each language

**Current Status**:
- ✅ English font texture exists
- ❌ Need fonts for languages with special characters (Greek, Arabic, Chinese, Japanese, etc.)

**What you'll learn**:
- Working with bitmap fonts and texture atlases
- Understanding character encoding (ISO-8859-1, UTF-8)
- Image processing and game asset creation
- OpenGL texture formats

**Difficulty**: 🟡 Intermediate (requires graphics knowledge)

### 🔨 Challenge 3: Build and Test Translation System

**What's needed**: Compile `.po` files to `.mo` files and integrate them into the build system

**Current Status**:
- ✅ `.po` files exist for 3 languages
- ❌ Need to generate `.mo` (Machine Object) files
- ❌ Need to integrate `msgfmt` into build scripts
- ❌ Need to test translations on all platforms

**What you'll learn**:
- Using gettext tools (`msgfmt`, `msgmerge`, `xgettext`)
- Makefile and build system configuration
- Cross-platform build testing
- GitHub Actions workflow modification

**Difficulty**: 🟡 Intermediate (requires build system knowledge)

### 🧪 Challenge 4: In-Game Language Switcher

**What's needed**: Add a menu option to change language without restarting the game

**Current Status**:
- ✅ `SetLanguage()` function exists in I18n.cpp
- ❌ No UI menu to select language
- ❌ Need to reload UI strings after language change
- ❌ Need to save language preference to config file

**What you'll learn**:
- C++ GUI programming
- Game menu systems
- Configuration file handling
- Event-driven programming

**Difficulty**: 🔴 Advanced (requires C++ and game engine knowledge)

### 🌏 Challenge 5: Right-to-Left (RTL) Language Support

**What's needed**: Support RTL languages like Arabic properly

**Current Status**:
- ✅ Arabic translation framework exists
- ❌ UI doesn't support RTL text rendering
- ❌ Menu layouts need to flip for RTL

**What you'll learn**:
- Bidirectional text rendering
- UI layout systems
- Cultural considerations in software design
- Complex text rendering challenges

**Difficulty**: 🔴 Advanced (requires deep graphics/UI knowledge)

### 📱 Challenge 6: Test on Multiple Platforms

**What's needed**: Test the game in different languages on Windows, Linux, and macOS

**Current Status**:
- ✅ Builds work on all platforms
- ❌ Need testing with different system locales
- ❌ Need to verify font rendering on all platforms
- ❌ Need to test special characters display correctly

**What you'll learn**:
- Cross-platform testing methodologies
- Virtual machines and Docker for testing
- Bug reporting and documentation
- Quality assurance processes

**Difficulty**: 🟢 Beginner-friendly (great for getting started!)

---

## 🎓 What You'll Learn

By contributing to BlockOut II, you'll gain hands-on experience with:

### Programming Skills
- **C++ Development**: Work with a real-world C++ codebase
- **Build Systems**: Makefiles, CMake concepts, cross-platform compilation
- **Version Control**: Git workflows, pull requests, code reviews
- **CI/CD**: GitHub Actions, automated testing and deployment

### Internationalization (i18n)
- **gettext**: Industry-standard translation framework
- **Locale Management**: How software detects and uses system languages
- **Character Encodings**: UTF-8, ISO-8859-1, Unicode
- **Translation Workflows**: .po/.mo files, translation memory

### Game Development
- **OpenGL**: Graphics rendering and texture management
- **SDL**: Cross-platform multimedia library
- **Game Architecture**: Menu systems, state management, configuration

### Software Engineering
- **Cross-Platform Development**: Windows, Linux, macOS differences
- **Package Management**: DEB, RPM, PKG formats
- **Documentation**: Writing clear, multilingual documentation
- **Collaboration**: Working with an international team

---

## 🛠️ How to Get Started

### Step 1: Set Up Your Development Environment

#### For Linux (Ubuntu/Debian):
```bash
# Clone the repository
git clone https://github.com/coderdojo-cordoba/blockout2025.git
cd blockout2025

# Install dependencies
sudo ./install-ubuntu-deps.sh

# Build and run
./build-and-run.sh
```

#### For Windows:
1. Install [Visual Studio 2022 Community Edition](https://visualstudio.microsoft.com/) (free)
2. Install [Git for Windows](https://git-scm.com/download/win)
3. Clone the repository
4. Follow the Windows build instructions in [README.md](README.md)

#### For macOS:
```bash
# Install Homebrew if you don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Clone and build
git clone https://github.com/coderdojo-cordoba/blockout2025.git
cd blockout2025
brew install sdl12-compat pkg-config
make -C ImageLib/src
make -C BlockOut _macos=1
```

### Step 2: Choose Your First Contribution

**For Beginners**:
- 🌐 Translate the game to your language (edit/create `.po` files)
- 📝 Improve documentation
- 🧪 Test the game on your platform and report bugs
- 📖 Translate the README to a new language

**For Intermediate Developers**:
- 🔨 Set up the `.mo` file generation in the build system
- 🎨 Create localized font textures
- 🐛 Fix internationalization bugs
- 📦 Test package installations on different platforms

**For Advanced Developers**:
- 🎮 Implement the in-game language switcher UI
- 🌏 Add RTL language support
- ⚡ Optimize the translation loading system
- 🔧 Improve the build system

### Step 3: Make Your Contribution

1. **Fork the repository** on GitHub
2. **Create a branch** for your changes: `git checkout -b add-german-translation`
3. **Make your changes** (translate, code, test)
4. **Commit your work**: `git commit -m "Add German translation"`
5. **Push to your fork**: `git push origin add-german-translation`
6. **Open a Pull Request** on GitHub

### Step 4: Get Help and Collaborate

- 💬 **GitHub Discussions**: Ask questions, share ideas
- 🐛 **GitHub Issues**: Report bugs, request features
- 📧 **Email**: Contact the maintainers
- 🌐 **CoderDojo/Code Club**: Share with your local club!

---

## 📋 Translation Quick Start

Want to translate the game? Here's how:

### 1. Copy a Template
```bash
cd BlockOut/po
cp es.po YOUR_LANGUAGE.po  # Replace YOUR_LANGUAGE with your language code (e.g., de, it, ja)
```

### 2. Edit the Translation File

Open `YOUR_LANGUAGE.po` in a text editor and translate the strings:

```po
# Before:
msgid "MAIN MENU"
msgstr "MENU PRINCIPAL"

# After (for German):
msgid "MAIN MENU"
msgstr "HAUPTMENÜ"
```

### 3. Update the Header
Change the header information to reflect your language:
```po
"Language: de\n"
"Last-Translator: Your Name <your.email@example.com>\n"
```

### 4. Test Your Translation
```bash
# Generate the .mo file
msgfmt -o YOUR_LANGUAGE.mo YOUR_LANGUAGE.po

# Create the locale directory
mkdir -p ../locale/YOUR_LANGUAGE/LC_MESSAGES/
cp YOUR_LANGUAGE.mo ../locale/YOUR_LANGUAGE/LC_MESSAGES/blockout.mo

# Run the game with your language
LANG=YOUR_LANGUAGE ./blockout
```

### 5. Submit Your Translation
Create a pull request with your new `.po` file!

---

## 🎯 Contribution Guidelines

### Code Style
- Follow the existing code style in the project
- Use meaningful variable and function names
- Add comments for complex logic
- Test your changes before submitting

### Translation Guidelines
- Keep translations concise (UI space is limited)
- Maintain the same tone as the original
- Test special characters display correctly
- Consider cultural context

### Commit Messages
- Use clear, descriptive commit messages
- Start with a verb: "Add", "Fix", "Update", "Remove"
- Reference issues when applicable: "Fix #123"

### Pull Requests
- Describe what your PR does and why
- Include screenshots for UI changes
- Link to related issues
- Be responsive to feedback

---

## 🏆 Recognition

All contributors will be:
- ✨ Listed in the game credits
- 🌟 Acknowledged in release notes
- 🎖️ Recognized on the GitHub contributors page
- 📢 Celebrated in our community

---

## 📚 Resources for Learning

### Internationalization (i18n)
- [GNU gettext Manual](https://www.gnu.org/software/gettext/manual/)
- [i18n Best Practices](https://www.w3.org/International/questions/qa-i18n)
- [Poedit - Translation Editor](https://poedit.net/)

### C++ and Game Development
- [LearnCpp.com](https://www.learncpp.com/)
- [OpenGL Tutorial](https://learnopengl.com/)
- [SDL Documentation](https://wiki.libsdl.org/)

### Git and GitHub
- [GitHub Skills](https://skills.github.com/)
- [Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute/)

### Build Systems
- [Make Tutorial](https://makefiletutorial.com/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

---

## 🤝 Code of Conduct

We are committed to providing a welcoming and inclusive environment for all contributors, especially young developers. We expect:

- **Respect**: Treat everyone with kindness and respect
- **Patience**: Help beginners learn and grow
- **Constructive Feedback**: Focus on improvement, not criticism
- **Inclusivity**: Welcome people of all backgrounds and skill levels
- **Learning**: Mistakes are opportunities to learn

---

## 💡 Project Ideas for CoderDojo/Code Club Sessions

Here are some project ideas you can work on during your coding club sessions:

### Beginner Projects (1-2 hours)
1. **Translation Sprint**: Translate 10 game strings to your language
2. **Documentation Detective**: Find and fix typos in README files
3. **Platform Tester**: Install and test the game on different computers
4. **Screenshot Gallery**: Create localized screenshots for different languages

### Intermediate Projects (2-4 hours)
1. **Font Creator**: Design a custom font texture for a language
2. **Build Master**: Set up the complete build environment and document it
3. **Translation Tool**: Create a simple script to validate .po files
4. **Package Tester**: Test installation packages on virtual machines

### Advanced Projects (4+ hours)
1. **Language Switcher**: Implement the in-game language selection menu
2. **RTL Support**: Add right-to-left text rendering for Arabic
3. **Translation Pipeline**: Automate .po to .mo conversion in CI/CD
4. **Localization Dashboard**: Create a web page showing translation progress

---

## 📞 Contact

- **GitHub**: [coderdojo-cordoba/blockout2025](https://github.com/coderdojo-cordoba/blockout2025)

---

## 🌟 Ready to Start?

1. ⭐ **Star the repository** to show your support
2. 🍴 **Fork the repository** to start contributing
3. 👀 **Read the README** in your language
4. 🎯 **Pick a challenge** from the list above
5. 💪 **Make your first contribution**!

**Welcome to the BlockOut II international team! Let's make this game accessible to players around the world! 🌍🎮**

---

*This project is free and open source under the GNU GPL v2 license. See [LICENSE](LICENSE) for details.*

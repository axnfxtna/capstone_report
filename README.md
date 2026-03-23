<div align="center">

# 🎓 LaTeX Thesis Template

[![LuaLaTeX](https://img.shields.io/badge/LuaLaTeX-2C2C2C?style=for-the-badge&logo=latex&logoColor=white)](https://www.latex-project.org/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](./LICENSE)

**A robust, reproducible LaTeX thesis template powered by Docker.**  
Ensures your thesis compiles perfectly on any machine, every time.

</div>

---

## 📂 Project Structure

```text
📦 LaTeX-Thesis-Template
├── 📂 chapters/        # Thesis chapters (Introduction, Literature Review, etc.)
├── 📂 fonts/           # Custom fonts
├── 📂 images/          # Figures and illustrations
├── 📄 thesis.tex       # Main entry point
├── 📄 env.tex          # Configuration and packages
├── 📄 references.bib   # Bibliography database
├── 🛠️ build.ps1        # Build script for Windows
└── 🛠️ build.sh         # Build script for macOS/Linux
```

---

## 🚀 Quick Start

Ensure you have **[Docker Desktop](https://www.docker.com/products/docker-desktop/)** installed and running.

### 🪟 Windows (PowerShell)

1. **Build the Environment:**
   winpty or standard PowerShell:
   ```powershell
   ./build.ps1
   ```
2. **Compile Thesis:**
   Inside the container:
   ```bash
   latexmk -lualatex -pdf thesis.tex
   ```

### 🍎 macOS / 🐧 Linux

1. **Build the Environment:**
   Run the setup script:
   ```bash
   ./build.sh
   ```
2. **Compile Thesis:**
   Inside the container:
   ```bash
   latexmk -lualatex -pdf thesis.tex
   ```

> **Tip:** To define a custom output filename, add `-jobname=mythesis` to the command.

---

## ⚡ Live Preview

Use `latexmk` in "Preview Continuously" mode to automatically recompile when you save changes.

```bash
latexmk -lualatex -pdf -pvc thesis.tex
```

* **Recommended Viewers:** Skim (macOS), SumatraPDF (Windows), Okular (Linux).
* **Note:** This requires a PDF viewer that supports auto-refresh.

---

## 🛠️ Recommended VS Code Setup

We recommend the following extensions for an optimal writing experience:

| Extension | Description |
| :--- | :--- |
| **[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)** | Comprehensive LaTeX features including build tools, syntax highlighting, and PDF preview. |
| **[LaTeX Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities)** | Essential add-ons like word count and bibliography management. |

---

## 📝 Notes

* **Engine:** This template is configured for **LuaLaTeX** to support modern fonts and unicode.
* **Cleaning:** Run `latexmk -c` to remove temporary auxiliary files.
* **Bibliography:** Handled automatically; just modify `references.bib`.

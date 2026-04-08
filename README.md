# 📘 Capstone Thesis LaTeX Template

![LaTeX](https://img.shields.io/badge/LaTeX-LuaLaTeX-blue)
![Platform](https://img.shields.io/badge/platform-windows%20|%20macos%20|%20linux-green)
![Editor](https://img.shields.io/badge/Editor-TexStudio-orange)

A **modern LuaLaTeX thesis template** designed for **Capstone theses**.  
The project is structured for **easy chapter editing, modular organization, and clean document management**.

---

# ✨ Features

- 📚 Modular **chapter-based structure**
- 🔤 **LuaLaTeX font support** for modern typography
- 🖼 Organized **image and asset management**
- 📖 Integrated **Biber citation system**
- ⚡ Easy compilation with **TexStudio**
- 🧩 Separate **configuration and content**


# 📦 Requirements

Install the following software before compiling the thesis.

| Software | Purpose | Note
|--------|--------|--------
| **[MiKTeX](https://miktex.org/download)** | LaTeX distribution |
| **[TexStudio](https://texstudio.org/#download)** | LaTeX editor | On linux ` sudo apt install texstudio `
| **[Git](https://git-scm.com/download)** *(optional)* | Version control |



# ⚙️ Setup Instructions

## 1️⃣ Open the Project

Open **TexStudio** and load:

```
thesis.tex
```

This is the **main document file**.


## 2️⃣ Configure Compiler

In **TexStudio**:

```
Options → Configure TexStudio → Build
```

Set:

```
Default Compiler → LuaLaTeX
Default Bibliography Tool → Biber
```

LuaLaTeX provides:

- better font rendering
- full Unicode support
- modern LaTeX features

Biber is used for bibliography management.


## 3️⃣ Enable Auto Compilation (Optional)

```
Options → Configure TexStudio → Internal PDF Viewer
```

Enable:

```
Auto Recompile on Save
```

This recompiles the document automatically when saving.


## 4️⃣ Compile the Thesis

Press:

``` text
F5 (Build & View)
```

This generates:

``` text
thesis.pdf
```


# 📂 Project Structure

```
thesis-template/
│
├── thesis.tex           # Main thesis file
├── env.tex              # Environment configuration
├── abbreviations.tex    # Acronyms
├── references.bib       # Bibliography
│
├── chapters/            # Thesis chapters
│
├── images/              # Figures and graphics
│
├── fonts/               # Custom fonts
│
└── thesis.pdf           # Compiled document
```


# ✍️ Adding Content

## Add a Chapter

Create a new file in:

```
chapters/
```

Example:

```
chapters/introduction.tex
```

Include it in `thesis.tex`:

```latex
\input{chapters/introduction.tex}
```


## Add Images

Place images inside:

```
images/
```

Example usage:

```latex
\includegraphics[width=\linewidth]{images/example.png}
```


## Add References

Add BibTeX entries to:

```
references.bib
```

Example:

```bibtex
@article{example2024,
  title={Example Paper},
  author={Author, A},
  year={2024}
}
```

Cite using:

```latex
\cite{example2024}
```


## Modify Abbreviations

Edit:

```
abbreviations.tex
```

Add or update acronyms as needed.


# 🧪 Debugging Compilation Errors

If **TexStudio fails to build**, compile using the **command line** to see the exact LaTeX error.

Open a terminal in the project directory and run:

```bash
lualatex thesis.tex
biber thesis
lualatex thesis.tex
lualatex thesis.tex
```

Command line compilation provides **full error output**, which makes it easier to diagnose problems such as:

- missing packages
- font errors
- syntax errors
- incorrect file paths


# 🐧 Common Issues 

<details>
<summary><b>MiKTeX Path Not Set (Linux)</b></summary>

If compilation fails, MiKTeX binaries may not be in your PATH.

Check in **MiKTeX Console** for warnings about missing PATH.

Add the path to `.bashrc`:

```bash
export PATH="$PATH:$HOME/bin"
```

Reload:

```bash
source ~/.bashrc
```

</details>

---

<details>

<summary><b>Cambria Math Font Not Found</b></summary>

LuaLaTeX requires the **Cambria Math font**.

Fix:

1. Download **Cambria Math**
2. Install the `.ttf` font
3. Open the file and click **Install**

</details>

---

<details>
<summary><b>Compilation Fails Due to Missing Packages</b></summary>

Open **MiKTeX Console**

```
Settings → Package Installation
```

Set:

```
Install missing packages on-the-fly → Always
```

Then compile again.

</details>

---

<details>
<summary><b>Missing Package Errors</b></summary>

If you see errors like:

```
File `kvoptions.sty' not found
File `pdfescape.sty' not found
```

Update packages in:

```
MiKTeX Console → Updates
```

Then rebuild the document.

</details>

---

<details>
<summary><b>Bibliography Compilation Errors</b></summary>

If bibliography fails to compile, ensure **Biber** is installed and configured.
In **TexStudio**:

```

Options → Configure TexStudio → Build
```
Set:

```
Default Bibliography Tool → Biber
```

Then compile again.

For manual complilation, run:

```bash
lualatex thesis.tex
biber thesis
lualatex thesis.tex
lualatex thesis.tex
```
</details>

---

# 💡 Tips

- Always compile using **LuaLaTeX**
- Keep chapters modular
- Store images inside `images/`
- Avoid modifying `env.tex` unless necessary



# 📜 License

This template is intended for **academic use**.  
Feel free to modify it for your thesis or research work.


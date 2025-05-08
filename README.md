# LaTeX PDF Generator Dev Container

This repository provides a LaTeX development environment using VS Code Dev Containers and Docker.

## Features

- Full LaTeX environment (`texlive-full`, `latexmk`)
- VS Code ready with LaTeX Workshop
- Templates for user guides and product briefs
- `Makefile` to simplify PDF generation

## 📦 Templates

- `templates/document.tex`

## 🚀 How to Use

### 1. Open in Dev Container

1. Clone the repository
2. Open in VS Code
3. Use the Command Palette: `Dev Containers: Reopen in Container`
4. Edit one of the `.tex` files

### 2. Build PDF with Make

By default, the `Makefile` compiles `document.tex`. You can specify a different file like this:

```bash
make TEXFILE=templates/document
# ⚡ nvim — Precision Neovim Configuration

> A fast, minimal, and highly intentional [Neovim](https://neovim.io/) setup built for **focus, speed, and flow**.

Designed for developers who care about **ergonomics**, **performance**, and **clarity over clutter**.

---

## 🧠 Philosophy

- **Minimal, but not barebones**
- **Fast by default**
- **Every keymap earns its place**
- **Zero friction workflow**

No gimmicks. No bloat. Just a clean, powerful editing environment.

### ❓ WHY You Should care? (Switching to [Neovim](https://neovim.io/) )

Imagine having an IDE directly in your terminal — no bloat, no startup lag, no **Microslop** 😂 — just pure speed and control. You still get all the essentials: autocompletion, blazingly fast navigation, and powerful LSP features, all in an extremely lightweight setup. But the real difference? It’s fully tailored to you. This isn’t an IDE anymore — it’s a **PDE**: a Personalized Development Environment.

---

## ✨ Core Experience

### ⚙️ Editor Behavior

- Relative numbers + centered scrolling (`scrolloff = 15`)
- Persistent undo (`undofile`)
- Smart case searching
- Split navigation that _respects your focus_
- Cursorline + 80-column visual guide
- Zero distractions (no mode spam, no noise)

### ⌨️ Keybinding Design

Built for **flow-state editing**:

- `jj` → Escape (no reaching for ESC)
- `<C-d>` / `<C-u>` → Scroll + center
- `<C-h/j/k/l>` → Seamless window navigation
- `<leader><leader>` → Save all
- `<leader>v` → Select entire file
- `yd` → Yank whole document (without losing position)

**Discipline:** Arrow keys are disabled — use `h/j/k/l`.

---

## 🧩 Plugin Stack

Carefully curated, minimal and powerful. Every plugin solves a real problem.

| Features            | Plugins                                |
| ------------------- | -------------------------------------- |
| 🔍 Navigation       | Telescope, Flash, Harpoon, Neo-tree    |
| 🧠 LSP/Compilation  | lspconfig, none-ls, blink.cmp, Copilot |
| 🎨 UI               | Lualine, Monokai Pro, Alpha, Which-key |
| ⚡ Editing          | Autopairs, Conform, Guess-indent       |
| 🔧 Dev Tools        | Gitsigns, Lazygit                      |
| 🌲 Syntax & Parsing | Treesitter                             |
| 🧪 Extras           | Smear-cursor, Cloak, Todo-comments     |

---

## 🚀 Installation

### Requirements

- [Neovim](https://neovim.io/) (latest stable)
- `git`
- `ripgrep`
- `node`
- `curl`, `tar`, `unzip`

---

### Setup

```bash
# Linux / macOS
git clone https://github.com/DennisKoskei/neovimrc.git ~/.config/nvim

# Windows (PowerShell)
git clone https://github.com/DennisKoskei/neovimrc.git $env:LOCALAPPDATA\nvim

nvim

```

Plugins install automatically on first launch via `lazy.nvim`.

---

## ⚡ Workflow Highlights

- **Blazing startup** via lazy loading
- **Instant navigation** (Telescope + Harpoon)
- **IDE-level LSP** without IDE bloat
- **Keyboard-first everything**

---

## 🧠 Notable Decisions

- Clipboard is system-synced (`unnamedplus`)
- No swap/backup files — clean workspace
- Diagnostic UX optimized (no spam, meaningful highlights)
- Terminal mode escape: `<Esc><Esc>`

---

## 🛠 Commands

| Action                 | Keybinding   |
| ---------------------- | ------------ |
| Open file tree         | `\`          |
| Close file tree        | `<leader>e`  |
| Open Lazy              | `<leader>la` |
| Open Mason             | `<leader>ma` |
| Clear search highlight | `<C-n>`      |
| Diagnostics list       | `<leader>q`  |

---

## 🎯 Who This Is For

- Developers who want **speed without sacrificing power**
- People tired of bloated IDEs
- Vim users who value **intentional design**

---

## 🧬 Extend It

This config is built to be:

- Hackable
- Understandable
- Yours

Fork it. Break it. Rebuild it.

---

## ⚖️ License

MIT — do whatever you want, just don’t make it slow 😉

---

## 🧨 Final Note

> Your editor should disappear.

This one does.

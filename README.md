# 🌟 My Ultimate Neovim Configuration

Welcome to my personal **Neovim configuration** – an optimized, modular, and highly extensible setup built for speed, productivity, and an amazing coding experience. Whether you're a seasoned Vim user or just starting, feel free to clone, tweak, and contribute!

## 🚀 **Features & Plugins**

This setup is powered by some of the best **Neovim plugins** available, ensuring smooth navigation, powerful editing, and enhanced development workflow.

### **Core Features:**

- **Lazy.nvim** - Efficient and lightweight plugin manager.
- **Telescope.nvim** - Supercharged fuzzy finder for files, text, and more.
- **Neo-tree.nvim** - File explorer with Git integration.
- **Monokai-Pro** - Aesthetic theme with vibrant colors.
- **Treesitter** - Advanced syntax highlighting and incremental parsing.
- **nvim-web-devicons** - Beautiful file icons.
- **LSP Configurations:**
  - `lspconfig` - Language Server Protocol setup.
  - `nvim-cmp` - Smart autocompletion.
- **Git Integration:**
  - `gitsigns.nvim` - Show Git changes in the gutter.
  - `lazygit.nvim` - Smooth Git workflow inside Neovim.
- **Quality of Life Improvements:**
  - `lualine.nvim` - Minimal & stylish statusline.
  - `nvim-autopairs` - Automatically close brackets and quotes.
  - `indent-blankline.nvim` - Visual indentation guides.
  - `which-key.nvim` - Displays keybinding suggestions.
  - `todo-comments.nvim` - Highlight and manage TODO comments.
  - `undotree.nvim` - Better undo history visualization.
  - `zenmode.nvim` - Focus mode for deep work.
  - `speedtyper.nvim` - Fun typing practice inside Neovim!
  - `vim-sleuth.nvim` - Auto-detect tab width and indentation.

## 🛠 **Installation & Setup**

### **Prerequisites:**

Ensure you have Neovim installed. Also, install the following dependencies:

#### **Linux/macOS (Using APT/YUM/Pacman):**

```bash
sudo apt install ripgrep 7zip unzip wget curl tar pwsh node -y
```

#### **Windows (Using PowerShell):**

```powershell
winget install --id BurntSushi.ripgrep
winget install --id 7zip.7zip
winget install --id Microsoft.PowerShell
winget install --id OpenJS.NodeJS
winget install --id GNU.tar
winget install --id curl.curl
winget install --id unzip
```

#### **Windows (Using Chocolatey):**

```powershell
choco install ripgrep 7zip.install unzip wget curl tar pwsh nodejs -y
```

### **Clone the Repository**

1. Navigate to your Neovim config directory:

   - **Linux/macOS:** `~/.config/nvim/`
   - **Windows:** `C:/Users/<YourName>/AppData/Local/nvim/`

2. **Clone this repo into the `nvim` directory:**

   ```bash
   git clone https://github.com/DennisKoskei/neovimrc.git .
   ```

3. **Launch Neovim:**
   ```bash
   nvim
   ```
   The setup will automatically install plugins on the first run. Give it a few seconds to configure everything!

## 🛠 **Usage & Keybindings**

Here are some useful commands to get started:

- **Fuzzy find files:** `<leader>pf` (Telescope)
- **Live Grep in files:** `<leader>pf` (Telescope)
- **Open file explorer:** `<leader>n` (Neo-tree)
- **Close file explorer:** `<leader>e` (Neo-tree)
- **Show Git status:** `<leader>lg` (LazyGit)
- **Close Git status:** `q` (LazyGit)
- **Toggle undo history:** `<leader>u` (Undotree)
- **Enable Zen Mode:** `<leader>z` (ZenMode)
- **Show keybinds:** `<leader>wk` (Which-Key)

## 🤝 **Contributing**

I welcome contributions! If you have any suggestions, bug reports, or improvements, feel free to open an issue or submit a pull request.

## 🐝 **License**

This configuration is open-source under the **MIT License** – use it, modify it, and make it your own!

🔥 **Happy Vimming!** 🚀

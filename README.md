# gustavo's nvim config

Personal Neovim config based on kickstart.nvim. Steps below get you from zero to running on a fresh machine.

---

## 1. Install Neovim (latest stable)

**macOS**
```sh
brew install neovim
```

**Ubuntu / Debian**
```sh
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install neovim
```

**Verify:** `nvim --version` — must be v0.10+

---

## 2. Install a Nerd Font

Required — config has `vim.g.have_nerd_font = true`. Without it, icons render as squares.

**macOS**
```sh
brew install --cask font-jetbrains-mono-nerd-font
```

**Linux** — download from [nerdfonts.com](https://www.nerdfonts.com/font-downloads), extract to `~/.local/share/fonts/`, then run `fc-cache -fv`.

After installing, set the font in your terminal emulator.

---

## 3. Install dependencies

**macOS**
```sh
brew install git ripgrep fd tree-sitter node npm gcc make
```

**Ubuntu / Debian**
```sh
sudo apt install git ripgrep fd-find tree-sitter-cli nodejs npm gcc make unzip
```

These cover:
- `ripgrep` / `fd` — used by fff.nvim for grep and file search
- `node` / `npm` — required for TypeScript LSP (`ts_ls`) and ESLint
- `gcc` / `make` — needed to compile some plugins
- `tree-sitter` — parser CLI for Treesitter grammars

---

## 4. Clone this config

```sh
git clone https://github.com/fariasgustavo/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
```

> If you already have a Neovim config, back it up first:
> ```sh
> mv ~/.config/nvim ~/.config/nvim.bak
> mv ~/.local/share/nvim ~/.local/share/nvim.bak
> ```

---

## 5. Launch Neovim

```sh
nvim
```

On first launch, [lazy.nvim](https://lazy.folke.io/) auto-installs all plugins. This takes ~1–2 minutes. Watch the progress with `:Lazy`.

---

## 6. Install LSP servers and tools via Mason

Inside Neovim, run:

```
:Mason
```

Install these (press `i` on each):
- `typescript-language-server` — TypeScript / JavaScript LSP
- `eslint-lsp` — ESLint linting
- `lua-language-server` — Lua LSP
- `stylua` — Lua formatter
- `markdownlint` — Markdown linter

Mason installs binaries to `~/.local/share/nvim/mason/bin/` automatically.

---

## 7. Install Treesitter parsers

Inside Neovim:

```
:TSInstall all
```

Or install only what you need, e.g. `:TSInstall typescript javascript lua`.

---

## Done

Open a file and verify:
- Icons show correctly in neo-tree (`\` to open)
- `ff` opens fff.nvim file finder
- `fg` opens live grep
- Git signs appear in the gutter on a git repo

### Key bindings (custom)

| Key | Action |
|-----|--------|
| `ff` | Find files (fff.nvim) |
| `fg` | Live grep |
| `\` | Toggle neo-tree |
| `<C-s>` | Save file |
| `9` | Jump to end of line |
| `<M-Left>` / `<M-Right>` | Move between windows |
| `<leader>tm` | Toggle markdown render |
| `<leader>ca` | Code action |
| `grr` | LSP references |
| `grd` | LSP definition |

# Neovim Shortcuts Reference

> Leader key: `Space`

---

## Search

| Key | Action |
|-----|--------|
| `/` | Search in current file |
| `n` / `N` | Next / previous match |
| `<Esc>` | Clear search highlights |
| `ff` | Find file by name (fff.nvim) |
| `fg` | Live grep in codebase |
| `fz` | Fuzzy grep in codebase |
| `fc` | Grep word under cursor |
| `<leader>fd` | Find files in specific directory (prompted) |
| `<S-Tab>` | Cycle grep modes inside fff picker (plain → regex → fuzzy) |

---

## Code Navigation (LSP)

| Key | Action |
|-----|--------|
| `grd` | Go to definition |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `grD` | Go to declaration |
| `gO` | List document symbols (functions, classes, vars) |
| `gW` | List workspace symbols |
| `K` | Hover documentation (type info, docs) |
| `<C-t>` | Jump back (after go-to) |
| `<C-o>` | Jump to older position |
| `<C-i>` | Jump to newer position |

---

## LSP Actions

| Key | Action |
|-----|--------|
| `grn` | Rename symbol |
| `gra` | Code action (normal + visual) |
| `<leader>f` | Format buffer |
| `<leader>q` | Open diagnostics in quickfix list |
| `<leader>th` | Toggle inlay hints |
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |

---

## File Tree (neo-tree)

| Key | Action |
|-----|--------|
| `\` | Toggle / reveal file tree |
| **Inside the tree:** | |
| `a` | Create file or directory |
| `d` | Delete file or directory |
| `r` | Rename file |
| `y` | Copy file |
| `x` | Cut file |
| `p` | Paste file |
| `Y` | Copy filename to clipboard |
| `gy` | Copy absolute path to clipboard |
| `<CR>` | Open file / expand directory |
| `P` | Toggle preview |
| `\` | Close tree window |

---

## File Finder — fff.nvim picker

| Key | Action |
|-----|--------|
| `<CR>` | Open file |
| `<C-s>` | Open in horizontal split |
| `<C-v>` | Open in vertical split |
| `<C-t>` | Open in new tab |
| `<Tab>` | Toggle multi-select |
| `<C-q>` | Send selected to quickfix |
| `<C-u>` / `<C-d>` | Scroll preview up / down |
| `<Up>` / `<C-p>` | Move up in list |
| `<Down>` / `<C-n>` | Move down in list |
| `<leader>p` | Focus preview panel |
| `<leader>l` | Focus file list |
| `<Esc>` / `<C-c>` | Close picker |

---

## Editing

| Key | Action |
|-----|--------|
| `<C-s>` | Save file (normal, insert, visual) |
| `9` | Jump to end of line |
| `<leader>f` | Format buffer (LSP / conform.nvim) |
| `u` | Undo |
| `<C-r>` | Redo |
| `yy` | Copy line |
| `dd` | Delete (cut) line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `gcc` | Toggle comment on line |
| `gc` | Toggle comment on selection (visual) |

---

## Completion (blink.cmp — super-tab preset)

| Key | Action |
|-----|--------|
| `<Tab>` | Accept completion / next snippet field |
| `<S-Tab>` | Previous snippet field |
| `<C-space>` | Open completion menu / show docs |
| `<C-n>` / `<Down>` | Next item |
| `<C-p>` / `<Up>` | Previous item |
| `<C-e>` | Close completion menu |
| `<C-k>` | Toggle signature help |

---

## Windows & Splits

| Key | Action |
|-----|--------|
| `<M-Left>` | Focus left window |
| `<M-Right>` | Focus right window |
| `<C-j>` | Focus lower window |
| `<C-k>` | Focus upper window |
| `<C-w>s` | Split horizontal |
| `<C-w>v` | Split vertical |
| `<C-w>q` | Close window |
| `<C-w>=` | Equalize window sizes |

---

## Tabs

| Key | Action |
|-----|--------|
| `gt` | Next tab |
| `gT` | Previous tab |
| `:tabnew` | New tab |
| `:tabclose` | Close tab |

---

## Git Hunks (gitsigns)

| Key | Action |
|-----|--------|
| `]c` | Next git change (hunk) |
| `[c` | Previous git change (hunk) |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage entire buffer |
| `<leader>hR` | Reset entire buffer |
| `<leader>hp` | Preview hunk (floating) |
| `<leader>hi` | Preview hunk inline |
| `<leader>hb` | Git blame current line |
| `<leader>hd` | Diff against index |
| `<leader>hD` | Diff against last commit |
| `<leader>hq` | Hunks to quickfix (this file) |
| `<leader>hQ` | Hunks to quickfix (whole repo) |
| `ih` | Text object: select hunk (visual / operator) |

---

## Git Toggles

| Key | Action |
|-----|--------|
| `<leader>tb` | Toggle inline git blame |
| `<leader>tw` | Toggle intra-line word diff |

---

## Git Conflicts (git-conflict.nvim)

| Key | Action |
|-----|--------|
| `co` | Choose **ours** |
| `ct` | Choose **theirs** |
| `cb` | Choose **both** |
| `c0` | Choose **none** |
| `]x` | Next conflict |
| `[x` | Previous conflict |

---

## Debugging (nvim-dap)

| Key | Action |
|-----|--------|
| `<F5>` | Start / continue |
| `<F1>` | Step into |
| `<F2>` | Step over |
| `<F3>` | Step out |
| `<F7>` | Toggle DAP UI |
| `<leader>b` | Toggle breakpoint |
| `<leader>B` | Set conditional breakpoint |

---

## Toggles

| Key | Action |
|-----|--------|
| `<leader>tm` | Toggle markdown render |
| `<leader>th` | Toggle LSP inlay hints |
| `<leader>tb` | Toggle git blame |
| `<leader>tw` | Toggle git word diff |

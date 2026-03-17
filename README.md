# Dotfiles

## Keyboard Bindings

### Vim

Leader key: `Space`

#### LSP
| Binding | Action |
|---------|--------|
| `gd` | Go to definition |
| `gi` | Go to implementation |
| `gh` | Show diagnostic (current) |
| `<Leader>di` | Show diagnostic current |

#### Terminal
| Binding | Action |
|---------|--------|
| `<Leader>tv` | Open vertical terminal (50 cols) |
| `<Leader>th` | Open horizontal terminal (10 rows) |

#### Vim Config
| Binding | Action |
|---------|--------|
| `<Leader>sv` | Source vimrc |
| `<Leader>ev` | Edit vimrc |

#### Slime (send to tmux)
| Binding | Mode | Action |
|---------|------|--------|
| `<Leader>x` | Visual | Send selection to tmux pane |
| `<Leader>x` | Normal | Send paragraph to tmux pane |

#### Window Navigation
| Binding | Action |
|---------|--------|
| `Ctrl-h` | Move to left window |
| `Ctrl-j` | Move to window below |
| `Ctrl-k` | Move to window above |
| `Ctrl-l` | Move to right window |

#### File Finding (CtrlP)
| Binding | Action |
|---------|--------|
| `<Leader>f` | Fuzzy find files |
| `<Leader>b` | Fuzzy find buffers |

#### Commands
| Command | Action |
|---------|--------|
| `:Vg <pattern>` | Vimgrep across all files |

### Tmux

Prefix key: `Ctrl-f`

#### General
| Binding | Action |
|---------|--------|
| `Prefix Space` | Enter copy mode |
| `Prefix r` | Reload tmux.conf |

#### Copy Mode (vi)
| Binding | Action |
|---------|--------|
| `v` | Begin selection |
| `y` | Copy selection and cancel |
| `Ctrl-v` | Toggle rectangle selection |

#### Pane Navigation
| Binding | Action |
|---------|--------|
| `Prefix h` | Select pane left |
| `Prefix j` | Select pane down |
| `Prefix k` | Select pane up |
| `Prefix l` | Select pane right |

#### Pane Resize (repeatable)
| Binding | Action |
|---------|--------|
| `Prefix H` | Resize left 5 |
| `Prefix J` | Resize down 5 |
| `Prefix K` | Resize up 5 |
| `Prefix L` | Resize right 5 |

#### Splits
| Binding | Action |
|---------|--------|
| `Prefix \|` | Vertical split (current dir) |
| `Prefix -` | Horizontal split (current dir) |

#### Window Navigation
| Binding | Action |
|---------|--------|
| `Prefix n` | Next window |
| `Prefix p` | Previous window |

### Readline (.inputrc)

Mode: vi

#### Insert Mode
| Binding | Action |
|---------|--------|
| `Ctrl-l` | Clear screen |

#### Command Mode
| Binding | Action |
|---------|--------|
| `G` | End of history |
| `gg` | Beginning of history |
| `Ctrl-l` | Clear screen |
| `Ctrl-r` | Fuzzy history search (fzf) |

## Vim Plugins

```bash
mkdir -p ~/.vim/pack/downloads/opt

git clone https://github.com/tpope/vim-commentary.git ~/.vim/pack/downloads/opt/vim-commentary
git clone https://github.com/tpope/vim-surround.git ~/.vim/pack/downloads/opt/vim-surround
git clone https://github.com/yegappan/lsp ~/.vim/pack/downloads/opt/lsp
git clone https://github.com/vv9k/vim-github-dark.git ~/.vim/pack/downloads/opt/vim-github-dark
git clone https://github.com/tpope/vim-fugitive ~/.vim/pack/downloads/opt/vim-fugitive
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/downloads/opt/ctrlp
git clone https://github.com/jpalardy/vim-slime ~/.vim/pack/downloads/opt/vim-slime
git clone https://github.com/mhinz/vim-signify ~/.vim/pack/downloads/opt/vim-signify

```

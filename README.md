# dotfiles

## Things to install
### EZ install packages
- [brew](https://brew.sh/)

## Terminal emulator
- [alacritty](https://github.com/alacritty/alacritty)

## Shell
- [fish](https://fishshell.com/)
- [fisher plugin manager for fish](https://github.com/jorgebucaran/fisher)
- [hydro prompt](https://github.com/jorgebucaran/hydro)
- [fzf](https://github.com/junegunn/fzf)
- [fzf fish integration](https://github.com/junegunn/fzf/blob/master/shell/key-bindings.fish)

## Editor
- [neovim v0.5](https://thomasventurini.com/articles/install-neovim-05-in-ubuntu/)
- [tmux](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)
- [tmux customization](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)
- [tmux plugin manager](https://github.com/tmux-plugins/tpm)

Lang servers for [`nvim builtin lsp`](https://github.com/neovim/nvim-lspconfig): (make sure there have executable in path)
- [tsserver](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tsserver)
- [tailwindcss](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tailwindcss)
- [rust-analyzer](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer)
- [lau](https://www.chrisatmachine.com/Neovim/28-neovim-lua-development)

## Langs
- [nodejs](https://nodejs.org/en/)
- [rust](https://rustup.rs/)
- [go](https://formulae.brew.sh/formula/go)

## Link configs
```bash
#link personal configs as a lua module
ln -sf ~/Code/hrryndrsn/dotfiles/lua/hrryndrsn ~/.config/nvim/lua/
#link main init.lua file
ln -sf ~/Code/hrryndrsn/dotfiles/init.lua ~/.config/nvim/init.lua
```

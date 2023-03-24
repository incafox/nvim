call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'flowtype/vim-flow'

Plug 'kkharji/sqlite.lua'

"telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"fzf
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'dyng/ctrlsf.vim'

" easy lsp
Plug 'neovim/nvim-lspconfig'
" Plug 'jose-elias-alvarez/null-ls.nvim'
" Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

"lsp ts
Plug 'albingroen/nvim-lsp-typescript-config'

" GD with new tab (ctrl + ])
" Plug 'ipod825/vim-tabdrop'

"tagbar
Plug 'majutsushi/tagbar'
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Plug 'ctrlpvim/ctrlp.vim'
" Themes
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'vim-scripts/Zenburn'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'overcache/NeoSolarized'
Plug 'bluz71/vim-moonfly-colors'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/everforest'
Plug 'doums/darcula'
Plug 'drewtempelmeyer/palenight.vim'
" Plug 'ghifarit53/tokyonight-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'jacoborus/tender.vim'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'tiagovla/tokyodark.nvim'

Plug 'dracula/vim', { 'as': 'dracula' }
" Using Vim-Plug:
Plug 'Mofiqul/dracula.nvim'
" Plug 'dracula/dracula-theme'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-solarized8'
Plug 'romainl/flattened'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'navarasu/onedark.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'projekt0n/github-nvim-theme'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'loctvl842/monokai-pro.nvim'

" bufferfile 
Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

"nvim tree 
Plug 'nvim-tree/nvim-tree.lua'

" vs code
Plug 'tomasiser/vim-code-dark'
Plug 'Mofiqul/vscode.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

"icons
Plug 'ryanoasis/vim-devicons'

" nerd commetns
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

"
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'

Plug 'MunifTanjim/nui.nvim'

Plug 'jackMort/ChatGPT.nvim'

" pomodoro
Plug 'MunifTanjim/nui.nvim'
Plug 'jackMort/pommodoro-clock.nvim'

" typing
" Plug 'alvan/vim-closetag'
" Plug 'jiangmiao/auto-pairs'
" Plug 'tpope/vim-surround'

" polyglot
Plug 'herringtondarkholme/yats.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'

" Git diffs 
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" Plug 'yggdroot/indentline'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" golang
Plug 'fatih/vim-go'
"ts 
Plug 'leafgarland/typescript-vim' " TypeScript syntax

"prettier
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()

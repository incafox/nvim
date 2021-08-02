call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'

" status bar
"Plug 'maximbaz/lightline-ale'
"Plug 'itchyny/lightline.vim'
"lubeck
Plug 'vim-airline/vim-airline'

"telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"snap finder 
Plug 'camspiers/snap'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'dyng/ctrlsf.vim'

"tagbar
Plug 'majutsushi/tagbar'
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Denite - Fuzzy finding, buffer management
" Plug 'Shougo/denite.nvim'
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'ctrlpvim/ctrlp.vim'
" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'vim-scripts/Zenburn'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'overcache/NeoSolarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'bluz71/vim-moonfly-colors'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/everforest'
Plug 'doums/darcula'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'jacoborus/tender.vim'
Plug 'embark-theme/vim', { 'as': 'embark' }


Plug 'dracula/vim', { 'as': 'dracula' }
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
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'cormacrelf/vim-colors-github'

Plug 'projekt0n/github-nvim-theme'
Plug 'drewtempelmeyer/palenight.vim'


"Plug 'itchyny/lightline.vim'
" vim keyword
Plug 'pangloss/vim-javascript'

Plug 'HerringtonDarkholme/yats.vim'

" search words
Plug 'dyng/ctrlsf.vim'

"icons
Plug 'ryanoasis/vim-devicons'

"emberjs
Plug 'andrewradev/ember_tools.vim'

"ruby on rails
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
" nerd commetns
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

"spotify xd
Plug 'srishanbhattarai/neovim-spotify', { 'do': 'bash install.sh', 'on': ['Spotify'] }

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Tree
Plug 'scrooloose/nerdtree'

" typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
" Plug 'sirver/ultisnips'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'

" golang
Plug 'fatih/vim-go'
"Plug 'vim-jp/vim-go-extra'
"Plug 'xolox/vim-easytags'  
"
"react
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" python
" Plugin 'vim-scripts/indentpython.vim'bbbbbb
Plug 'nvie/vim-flake8'

"prettier
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }


call plug#end()

"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set signcolumn=yes
set expandtab
set tabstop=2 shiftwidth=2

filetype plugin indent on
"filetype plugin indent off

"set list
"set listchars=·,tab:▸\ ,trail:▫,extends:>,precedes:<,nbsp:+,eol:¬

set relativenumber
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim

"********* GRUBVOX THEME************

"let g:gruvbox_contrast_dark = 'soft'
"colorscheme gruvbox
"highlight Normal ctermbg=NONE
"set background=light
"set background=dark
"set laststatus=2
"set noshowmode
"***********************************

"********* MATERIAL THEME **********
"if (has('nvim'))
"  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
"endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

let g:material_terminal_italics = 1
"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'

"let g:material_theme_style ='lighter'
"let g:material_theme_style = 'palenight'
"let g:material_theme_style = 'ocean'
"
"colorscheme material
"*****************************************

"*************** zenburn THEME *************
"let g:material_theme_style = 'ocean'
"colorscheme zenburn
"set background=light
"*******************************************

"*********** seoul 256 theme **********************
" Unified color scheme (default: dark)
"colo seoul256


" Light color scheme
"colo seoul256-light

" Switch
"set background=dark
"set background=light

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"Default: 237
"let g:seoul256_background = 236
"colo seoul256

" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
"let g:seoul256_background = 255
"colo seoul256
"****************************************

"******* nord theme *****
"colorscheme nord

"packadd! dracula
"syntax enable
"colorscheme dracula

"*************** SOLARIZED THEME  no funciona xd *********
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
"******************************************

"********* neo solarized theme *****
"colorscheme NeoSolarized
"
"set background=dark

"**********************************

"******* sonokai theme ********* 
"let g:sonokai_style = 'andromeda'
"let g:sonokai_style = 'atlantis'
"let g:sonokai_style = 'shusia'
"let g:sonokai_style = 'maia'
"let g:sonokai_enable_italic = 1 
"let g:sonokai_disable_italic_comment = 1
"colorscheme sonokai
"************************************* 

"************** Edge Theme ****************
"let g:edge_style = 'neon'
"let g:edge_enable_italic = 1
"let g:edge_disable_italic_comment = 1
"colorscheme edge
"set background=light
"************** Forest Night Theme ********
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1
colorscheme forest-night

"****************** airline ***************
let g:airline_powerline_fonts = 1
"set t_Co=256
"let g:airline_theme='gruvbox'
"let g:airline_theme='solarized'
"let g:airline_theme='seoul256'
"let g:airline_theme='deus'

"********************************************
"hi Normal guibg=NONE ctermbg=NONE

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript



"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" open nerdtree on startup and go to main window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter * NERDTreeMirror
nmap <silent> <C-b> :NERDTreeToggle<CR>

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"command! -nargs=0 Prettier :CocCommand prettier.formatFile
"vmap <leader>f  <Plug>(coc-format-selected)
"nmap <silent><C-v>(coc-format-selected)

nmap <silent> <C-v> :Prettier<CR>
nmap <silent> <C-v> :Prettier<CR>



let g:go_def_mode='gopls'
let g:go_info_mode='gopls'


" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
"filetype off
"filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
"filetype plugin indent on
"syntax on
"
"
"
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"Stuff for GoLang"
"filetype off
"filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
"autocmd FileType go autocmd BufWritePre <buffer> Fmt 
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_type_info = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_function_calls = 1

"typescritp
let g:yats_host_keyword = 1

"python
let g:python_highlight_all = 1

"highlight Normal ctermbg=Blue
hi Search ctermfg=Yellow ctermbg=NONE cterm=bold,underline

"python
if has('python3')
endif
let g:python3_host_prog = expand('/usr/bin/python3.7')

"react
let g:jsx_ext_required = 1

"shortcut dw for local rename of all vars
nnoremap dw gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap dq gD:%s/<C-R>///gc<left><left><left>


if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

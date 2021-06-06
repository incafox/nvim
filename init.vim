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
"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'soft'
"let g:gruvbox_contrast_dark = 'hard'
"highlight Normal ctermbg=NONE
"set background=light
"set background=dark
"set laststatus=2
"set noshowmode
"***********************************
highlight Comment cterm=italic
set t_ZH=^[[3m
set t_ZR=^[[23m
"********* MATERIAL THEME **********
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
"if (has('termguicolors'))
"  set termguicolors
"endif

"let g:material_terminal_italics = 1
"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'

"let g:material_theme_style ='lighter'
"let g:material_theme_style = 'palenight'
"let g:material_theme_style = 'ocean'
"let g:material_terminal_italics = 1
"colorscheme material
"*****************************************

"*************** zenburn THEME *************
"let g:material_theme_style = 'ocean'
"syntax enable
"colorscheme zenburn
"set background=light
"*******************************************

"*********** seoul 256 theme **********************
" Unified color scheme (default: dark)

"syntax enable
"syntax on
"colo seoul256


" Light color scheme
"colo seoul256-light

" Switch
"set background=dark
"set background=light

" seoul256 (dark):
"Range:   233 (darkest) ~ 239 (lightest)
"Default: 237
"let g:seoul256_background = 238
"colo seoul256

" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
"let g:seoul256_background = 255
"colo seoul256
"****************************************

"******* nord theme *****
"let g:nord_italic = 1
"colorscheme nord

"packadd! dracula
"syntax enable
"colorscheme dracula
"syntax on
"set ruler
"set number
"color dracula " turn-on dracula color scheme
"*************** SOLARIZED THEME  no funciona xd *********
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
"******************************************

"********* neo solarized theme *****
"colorscheme NeoSolarized
"set background=light
"set background=dark
"**********************************

"******* solarized 8**********
"let g:solarized_italics = 1
"set background=dark
"set background=light
"colorscheme solarized8_low



"nel colorscheme flattened_dark

"******* sonokai theme ********* 
"let g:sonokai_style = 'andromeda'
"let g:sonokai_style = 'atlantis'
"let g:sonokai_style = 'shusia'
"let g:sonokai_style = 'maia'
"let g:sonokai_enable_italic = 1 
"let g:sonokai_disable_italic_comment = 1
"colorscheme sonokai
"************************************* 

let g:ctrlp_custom_ignore = '\v[\/](.cache|.config|.mozilla|.zoom|node_modules|target|dist)|(\.(swp|ico|git|svn))$'


"************** Edge Theme ****************
"let g:edge_style = 'neon'
"let g:edge_enable_italic = 1
"let g:edge_enable_italic_comment = 1
"colorscheme edge
"set background=light

"************ darcula intellij *****  
colorscheme darcula
set termguicolors
let g:lightline = { 'colorscheme': 'darculaOriginal' }


"************** Forest Night Theme ********
"set background=dark
"let g:everforest_enable_italic = 1
"let g:everforest_disable_italic_comment = 1
"let g:everforest_background = 'soft'
"colorscheme everforest


"****** github theme ****
"" use a slightly darker background, like GitHub inline code blocks
"let g:github_colors_soft = 1
"" use the dark theme
"set background=light
" in your .vimrc or init.vim
"colorscheme github
"hi Comment gui=italic cterm=italic term=italic

"augroup GruvboxMaterialCustom
"  autocmd!
"  autocmd ColorScheme github call SetColorOptions()
"  function SetColorOptions()
"    highlight Normal guibg=#ECE6DE ctermbg=253
"    highlight EndOfBuffer guibg=#ECE6DE ctermbg=253
    "highlight Visual term=reverse cterm=reverse guibg=Grey
"  endfunction
"augroup END
" if you use airline / lightline
"let g:airline_theme = "github"
"let g:lightline = { 'colorscheme': 'github' }


"indent plugin
"
let g:indentLine_color_term = 139
"let g:indentLine_char_list = ['|', '¦', '┆', '┊','⎸']
let g:indentLine_char_list = ['⎸']
"let g:indentLine_char = '⎸'




"***** gruvbox material *******
" Important!!
"if has('termguicolors')
"  set termguicolors
"endif
" For dark version.
"set background=dark
" For light version.
"set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
"let g:gruvbox_material_background = 'soft'
"let g:gruvbox_material_enable_italic = 1
"let g:gruvbox_material_disable_italic_comment = 1
"let g:gruvbox_material_palette = 'material'
"colorscheme gruvbox-material
"augroup GruvboxMaterialCustom
"  autocmd!
"  autocmd ColorScheme gruvbox-material call SetColorOptions()
"  function SetColorOptions()
"    highlight Normal guibg=#4f4a4a ctermbg=233
"    highlight EndOfBuffer guibg=#4f4a4a ctermbg=233
"    highlight Visual term=reverse cterm=reverse guibg=Grey
"  endfunction
"augroup END
"syntax on
"highlight Visual term=reverse cterm=reverse guibg=Grey
"set background=light
"************************
"********* VIM ONE mala syntaxis **********
"colorscheme one
"set background=dark " for the dark version
" set background=light " for the light version

"************ONE DARK*********

"syntax on
"let g:onedark_terminal_italics=1
"colorscheme onedark
"let g:airline_theme='onedark'

"****************** airline ***************
let g:airline_powerline_fonts = 1
set t_Co=256
"let g:airline_theme='gruvbox'
"let g:airline_theme='solarized'
"let g:airline_theme='seoul256'
"let g:airline_theme='deus'
"let g:airline_theme='darculaOriginal'
let g:airline_theme='zenburn'
"let g:airline_theme = 'gruvbox_material'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0
"********** molokai
"colorscheme molokai

"***********
"colorscheme monokai


"**** theme ;one half 
"syntax on
"set t_Co=256
"set cursorline
"colorscheme onehalflight
"let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }



" set ambiwidth=double
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


"***** paper
"set t_Co=256   " This is may or may not needed.
"set background=light
"colorscheme PaperColor


" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"********************************************
"hi Normal guibg=NONE ctermbg=NONE

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript

autocmd BufEnter *.js :silent let myIndex = SearchPatternInFile("@flow") | call SwitchFlowOrTsLsps(myIndex)
autocmd BufEnter *.jsx :silent let myIndex = SearchPatternInFile("@flow") | call SwitchFlowOrTsLsps(myIndex)


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" open nerdtree on startup and go to main window
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd BufEnter * NERDTreeMirror
nmap <silent> <C-b> :NERDTreeToggle<CR>
"command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')



"command! -nargs=0 Prettier :CocCommand prettier.formatFile
"vmap <leader>f  <Plug>(coc-format-selected)
"nmap <silent><C-v>(coc-format-selected)

nmap <silent> <C-v> :Prettier<CR>
nmap <silent> <C-v> :Prettier<CR>
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

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
"if has('python3')
"endif
"let g:python3_host_prog = expand('/usr/bin/python3.7')
let g:python3_host_prog = '/Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/lib/python3.8'
"react

"g:jsx_ext_required = 1

"shortcut dw for local rename of all vars
nnoremap dw gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap dq gD:%s/<C-R>///gc<left><left><left>


if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif





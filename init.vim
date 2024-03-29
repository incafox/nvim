"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc
set number
" set nonumber
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set encoding=UTF-8
set showmatch
set signcolumn=yes
set expandtab
set tabstop=2 shiftwidth=2

filetype plugin indent on
"filetype plugin indent off

" set relativenumber
" set nornu
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim

"********* GRUBVOX THEME************
" colorscheme gruvbox
" " let g:gruvbox_contrast_dark = 'medium'
" let g:gruvbox_contrast_dark = 'soft'
" highlight Normal ctermbg=NONE
" set background=light
" set background=dark
" set laststatus=2
" set noshowmode
"***********************************
highlight Comment cterm=italic
set t_ZH=^[[3m
set t_ZR=^[[23m
"********* MATERIAL THEME **********
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" let g:material_terminal_italics = 1
"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'

" let &t_ZH="\e[3m"
" let &t_ZR="\e[23m"
" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

" let g:material_terminal_italics = 1
" let g:material_theme_style ='lighter'
" let g:material_theme_style = 'palenight'
" let g:material_theme_style = 'palenight-community'
" let g:material_theme_style = 'ocean'
" colorscheme material
"*****************************************
"
"**** theme palenight ****
" set background=dark
" " " Italics for my favorite color scheme
" let g:palenight_terminal_italics=1
" colorscheme palenight
" highlight Comment cterm=italic
" let g:airline_theme = "palenight"
" " " " Italics for my favorite color scheme
" let g:palenight_terminal_italics=1
"
"
"*************** zenburn THEME *************
"let g:material_theme_style = 'ocean'
" let g:zenburn_disable_Label_underline = 1
" syntax enable
" colorscheme zenburn
"set background=light
"*******************************************
"********** github theme new
" colorscheme github-theme
"*********
"*********** seoul 256 theme **********************
" Unified color scheme (default: dark)

" syntax enable
" syntax on
" colo seoul256

" Light color scheme
" colo seoul256-light

" Switch
"set background=dark
" set background=light

" seoul256 (dark):
"Range:   233 (darkest) ~ 239 (lightest)
"Default: 237
" let g:seoul256_background = 239
" colo seoul256

" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
" let g:seoul256_background = 255
" colo seoul256
"****************************************

"******* nord theme *****
"let g:nord_italic = 1
"colorscheme nord
"
"***** dracula
" packadd! dracula
" syntax enable
" colorscheme dracula
" syntax on
" set ruler
" set number
" color dracula " turn-on dracula color scheme
"
" neovim dracula
" Vim-Script:
" colorscheme dracula

"
"*************** SOLARIZED THEME  no funciona xd *********
" syntax enable
" set background=dark
" colorscheme solarized
"let g:solarized_termcolors=256
"******************************************

"********* neo solarized theme *****
 " colorscheme NeoSolarized
" set background=light
" set background=dark
"**********************************

"******* solarized 8**********
" let g:solarized_italics = 1
" set background=dark
" set background=light
" colorscheme solarized8_low

"nel colorscheme flattened_dark

"******* sonokai theme ********* 
" let g:sonokai_style = 'andromeda'
" let g:sonokai_style = 'atlantis'
" let g:sonokai_style = 'shusia'
" let g:sonokai_style = 'maia'
" let g:sonokai_style = 'espresso'
" let g:sonokai_enable_italic = 1 
" let g:sonokai_disable_italic_comment = 1
" colorscheme sonokai

"************************************* 
" let g:ctrlp_custom_ignore = '\v[\/](.cache|.config|.mozilla|.zoom|node_modules|target|dist)|(\.(swp|ico|git|svn))$'
"************** Edge Theme ****************
" let g:edge_style = 'neon'
" let g:edge_style = 'aura'
" let g:edge_enable_italic = 1
" let g:edge_enable_italic_comment = 1
" colorscheme edge
" set background=light

"************ darcula intellij *****  
" colorscheme darcula
" set termguicolors
" let g:lightline = { 'colorscheme': 'darculaOriginal' }

"************** Forest Night Theme ********
" set background=dark
" syntax enable
" let g:everforest_enable_italic = 1
" let g:everforest_disable_italic_comment = 1
" let g:everforest_background = 'hard'
" colorscheme everforest
" highlight! link SignColumn LineNr

"****** github theme ****
"" use a slightly darker background, like GitHub inline code blocks
" let g:github_colors_soft = 1
"" use the dark theme
" set background=light
" in your .vimrc or init.vim
" colorscheme github
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


"************ONE DARK*********
" syntax on
" let g:onedark_terminal_italics=1
" colorscheme onedark
" **** one dark otro
" let g:onedark_style = 'warmer'
" let g:onedark_style = 'deep'
" colorscheme onedark
"********** molokai
" colorscheme molokai

"***********
" colorscheme monokai

" ----- theme : palenight
""
" set background=dark
" colorscheme palenight
" let g:airline_theme = "palenight"

"------- theme : tokyonight
set termguicolors
" let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
" colorscheme tokyonight-storm


"----- monokai pro----
" colorscheme monokai-pro
" ------ theme : tender
" if (has("termguicolors"))
"  set termguicolors
" endif
" syntax enable
" colorscheme tender

" ------ theme embark
" colorscheme embark

"**** theme ;one half 
" syntax on
" set t_Co=256
" set cursorline
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
 " lightline
 " let g:lightline = { 'colorscheme': 'onehalfdark' }

 " theme tokio dark
" let g:tokyodark_transparent_background = 0
" let g:tokyodark_enable_italic_comment = 1
" let g:tokyodark_enable_italic = 1
" let g:tokyodark_color_gamma = "1.0"
" colorscheme tokyodark


 " set ambiwidth=double
"***** paper
" set t_Co=256   " This is may or may not needed.
" set background=light
" colorscheme PaperColor

" set t_Co=256
" set t_ut=
" colorscheme codedark

" ----------------
" Vim-Script:
" For dark theme (neovim's default)
" set background=dark
" For light theme
" set background=light
" Enable transparent background
" let g:vscode_transparency = 1
" Enable italic comment
" let g:vscode_italic_comment = 1
" Disable nvim-tree background color
" let g:vscode_disable_nvimtree_bg = v:true
" colorscheme vscode

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
nmap <silent> <C-b> :NvimTreeToggle<CR>
"command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"command! -nargs=0 Prettier :CocCommand prettier.formatFile

nmap <silent> <C-v> :Prettier<CR>
nmap <silent> <C-v> :Prettier<CR>
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" persist my changes 
set undofile 
set undodir=~/.config/nvim/undodir

" delete vertical lines
" set fillchars+=vert:\ 

filetype plugin indent on
syntax on

"typescritp
let g:yats_host_keyword = 1

"python
let g:python_highlight_all = 1

"highlight Normal ctermbg=Blue
" hi Search ctermfg=Yellow ctermbg=NONE cterm=bold
hi Search guibg=peru guifg=wheat

let g:python3_host_prog = '/Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/lib/python3.8'

"shortcut dw for local rename of all vars
nnoremap dw gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap dq gD:%s/<C-R>///gc<left><left><left>

"fucking pyroght
" autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']
autocmd FileType python let b:coc_root_patterns = ['main.py', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
" noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" " search visually selected text literally
" xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
" noremap go :<C-U>Leaderf! rg --recall<CR>

function! CUSTOMOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

"  telescope
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Using Lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({layout_strategy='horizontal',layout_config={width=0.93} })<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep({layout_strategy='horizontal',layout_config={width=0.93}})<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers({layout_strategy='horizontal',layout_config={width=0.93}})<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags({layout_strategy='horizontal',layout_config={width=0.93}})<cr>

" lua << END
" telescope.setup {
"   defaults = {
"     history = {
"       path = '~/.local/share/nvim/databases/telescope_history.sqlite3',
"       limit = 100,
"     }
"   }
" }
" require('telescope').load_extension('smart_history')
" END

"copy the local path of the file
nnoremap <leader>fl :let @+=expand('% \| pbcopy')<cr>

"copy the full path of the file
nnoremap <leader>ft :let @+=expand('%:p')<cr>

"my customs italics xd
hi Comment gui=italic cterm=italic
hi String gui=italic cterm=italic
hi Preproc gui=italic cterm=italic

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:class',
    \ 'n:namespace',
    \ 'f:function',
    \ 'G:generator',
    \ 'v:variable',
    \ 'm:method',
    \ 'p:property',
    \ 'i:interface',
    \ 'g:enum',
    \ 't:type',
    \ 'a:alias',
  \ ],
  \'sro': '.',
    \ 'kind2scope' : {
    \ 'c' : 'class',
    \ 'n' : 'namespace',
    \ 'i' : 'interface',
    \ 'f' : 'function',
    \ 'G' : 'generator',
    \ 'm' : 'method',
    \ 'p' : 'property',
    \},
\ }


let g:tagbar_type_typescriptreact = {
\ 'ctagstype': 'typescript',
\ 'kinds': [
  \ 'c:class',
  \ 'n:namespace',
  \ 'f:function',
  \ 'G:generator',
  \ 'v:variable',
  \ 'm:method',
  \ 'p:property',
  \ 'i:interface',
  \ 'g:enum',
  \ 't:type',
  \ 'a:alias',
\ ],
\'sro': '.',
  \ 'kind2scope' : {
  \ 'c' : 'class',
  \ 'n' : 'namespace',
  \ 'i' : 'interface',
  \ 'f' : 'function',
  \ 'G' : 'generator',
  \ 'm' : 'method',
  \ 'p' : 'property',
  \},
\ }

" vertical split separator wihtout linjes
syn match    addOperator     " \= "

highlight addOperator ctermfg=34
let g:yats_host_keyword = 1

" transparent vim  
" hi Normal guibg=NONE ctermbg=NONE
" hi NonText ctermbg=NONE
hi clear EndOfBuffer
" hi SignColumn guibg=NONE ctermbg=NONE
hi clear SignColumn

highlight IndentBlanklineChar guifg=#515153 gui=nocombine

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
ensure_installed = {
  "tsx",
  "json",
  "html",
  }
}
EOF

" BUFFERLINE
set termguicolors
lua << EOF
require("bufferline").setup{
  options={
    mode = "tabs",
    color_icons = true,
    modified_icon = '●',
    offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left", 
            separator = true
        }
    },
    indicator = {
        style = 'underline',
    },
    separator_style = "slant",
    hover = {
        enabled = true,
        delay = 200,
        reveal = {'close'}
    }
  }
}
EOF


"" asdad
lua <<EOF
-- chat gpt
require("chatgpt").setup()
EOF

lua <<EOF
-- chat gpt
require("pommodoro-clock").setup()
EOF


" NVIM TREE 
lua <<EOF
-- examples for your init.lua
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- empty setup using defaults
require("nvim-tree").setup()
EOF



lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  tabline = {},
  extensions = {}
}
END

let g:vim_jsx_pretty_colorful_config = 1 " default 0

set tags=./tags;,./gems.tags;
" hi CocFloating ctermbg=red ctermfg=black guibg=black  
" hi CocErrorFloat ctermfg=red ctermfg=black

" hi wincolor ctermfg=red ctermfg=black  guibg=black

" highlight the visual selection after pressing enter.
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
" let g:coc_default_semantic_highlight

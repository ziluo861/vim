set hlsearch
let mapleader=" "
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>
set smartindent
set backspace=2
set autoindent
syntax on
set relativenumber
set ruler
set showmode
set nu
set bg=dark
set fileformats=unix,dos
set fileformat=unix
set autoindent 
set smartindent
set cindent
set fileencoding=utf-8
set encoding=utf-8
set showmatch 
set matchtime=2 
set ignorecase
set wrap
set wildmenu
set showcmd
set smartcase
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
filetype plugin on
filetype indent on
filetype off                  " required
filetype plugin indent on
set cursorline
set cursorcolumn
set nocompatible              " be iMproved, required
set rtp+=~/.fzf

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Mark--Karkat'
Plugin 'luochen1990/rainbow'
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'jacoborus/tender.vim'
Plugin 'vim-scripts/mru.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Yggdroot/indentLine'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'Align'
Plugin 'tpope/vim-surround'
Plugin 'c.vim'
Plugin 'edkolev/tmuxline.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:tagbar_ctags_bin = 'ctags' 
let g:tagbar_width     = 30     
let g:tagbar_autofocus = 1       
map <F4> :TagbarToggle<CR>
let Tlist_Show_One_File = 1
let Tlist_GainFocus_On_ToggleOpen = 1   
let Tlist_Exit_OnlyWindow         = 1    
let Tlist_File_Fold_Auto_Close    = 1    
let Tlist_Auto_Update             = 1    


let NERDTreeShowLineNumbers     = 1       " 显示行号
let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '^\.git$', '^\.repo$', '^\.svn$', '^\.hg$'  ]
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end



map <F3> :NERDTreeToggle<CR>


map <leader>tc :tabc<CR>

map <leader>to :tabo<CR>

map <leader>ts :tabs<CR>

map <leader>tp :tabp<CR>

map <leader>tn :tabn<CR>



let g:airline_powerline_fonts                   = 1 " 使用 powerline 打过补丁的字体
let g:airline#extensions#tabline#enabled        = 1 " 开启 tabline
let g:airline#extensions#tabline#buffer_nr_show = 1 " 显示 buffer 编号
let g:airline#extensions#ale#enabled            = 1 " enable ale integration


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_symbols.crypt     = '?'
let g:airline_symbols.linenr    = '⭡'
let g:airline_symbols.branch    = '⭠'

nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>



noremap <C-x> :w<CR>:bd<CR>
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>




let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained',
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'], 
\		},
\		'haskell': {
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'], 
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody', 
\		},
\		'perl': {
\			'syn_name_prefix': 'perlBlockFoldRainbow', 
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],
\		},
\		'css': 0,
\	}
\        }
let g:rainbow_active = 1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'    
let g:ycm_min_num_of_chars_for_completion               = 1 " 输入第 2 个字符开始补全                  
let g:ycm_seed_identifiers_with_syntax                  = 1 " 语法关键字补全    
let g:ycm_complete_in_comments                          = 1 " 在注释中也可以补全    
let g:ycm_complete_in_strings                           = 1 " 在字符串输入中也能补全    
let g:ycm_collect_identifiers_from_tag_files            = 1 " 使用 ctags 生成的 tags 文件    
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全    
let g:ycm_cache_omnifunc                                = 0 " 每次重新生成匹配项，禁止缓存匹配项    
let g:ycm_use_ultisnips_completer                       = 0 " 不查询 ultisnips 提供的代码模板补全，如果需要，设置成 1 即可
let g:ycm_show_diagnostics_ui                           = 0 " 禁用语法检查
let g:ycm_key_list_select_completion   = ['<Down>']   " 选择下一条补全，Default: ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']     " 选择上一条补全，Default: ['<S-TAB>', '<Up>']
let g:ycm_key_list_stop_completion     = ['<Enter>']  " 中止此次补全，Default: ['<C-y>'] 


 
if has("gui_running")
    set background=light
else
    set background=dark
endif
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="high"
let g:solarized_underline=1
let g:solarized_italic=0
let g:solarized_degrade=0
let g:solarized_visibility = "high"
let g:solarized_bold=1
let g:solarized_diffmode="normal"
let g:solarized_hitrail=0
let g:solarized_menu=1


let g:EasyMotion_do_mapping = 0                                                             
let g:EasyMotion_smartcase  = 1  " Turn on case-insensitive feature


" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif
"For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"" Theme
syntax enable
"colorscheme tender
let g:lightline = { 'colorscheme': 'tender' }



let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

nmap <F2> :MRU<cr>

let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indentLine_color_gui = '#A4E57E'


let g:NERDCompactSexyComs        = 1
let g:NERDDefaultAlign           = 'left' 
let g:NERDAltDelims_java         = 1
let g:NERDCustomDelimiters       = {'c': {'left': '/*', 'right': '*/'}}
let g:NERDCommentEmptyLines      = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines    = 1


vmap " S"
vmap ' S'
vmap ` S`
vmap [ S[
vmap ( S(
vmap { S{
vmap } S}
vmap ] S]
vmap ) S)
vmap > S>




call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'dracula/vim'
Plug 'w0rp/ale'
Plug 'mbbill/undotree/'
call plug#end()



"colorscheme dracula

nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>A :Ag<CR>

let g:ale_linters = {
\   'c++': ['clang', 'gcc'],
\   'c': ['clang', 'gcc'],
\   'python': ['pylint'],
\}

let b:ale_fixers = ['autopep8', 'yapf']
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

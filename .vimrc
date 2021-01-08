syntax on
set tabstop=4 
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set backspace=2 "能使用backspace回删
set autoindent "设置c语言自动对齐
set clipboard+=unnamed "剪贴板


call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline-themes' "airline 的主题
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
call plug#end()

color snazzy
hi Normal guibg=NONE ctermbg=NONE
" nerdtree 设置
map <C-n> :NERDTreeToggle<CR> 
let NERDTreeShowHidden=1
" ctrl + n 显示/隐藏目录
"Nerdtree ctrl + w 切换目录和文件 


"ctrlp设置
let g:ctrlp_map = '<C-p>'
"latex设置
"let g:tex_flavor='latex'
"let g:vimtex_view_method='zathura'
"let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'

"snippets设置
"let g:UltiSnipsExpandTrigger = '<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:indent_guides_guide_size            = 1  
" 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  
" 从第二层开始可视化显示缩进
"
"
"coc配置
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-tsserver','co    c-highlight', 'coc-python', 'coc-pairs', 'coc-clangd', 'coc-cmake', 'coc-git']   

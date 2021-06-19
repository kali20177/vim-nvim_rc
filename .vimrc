syntax on
set tabstop=4 
set number relativenumber
set shiftwidth=4
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
imap <S-Tab> <Esc><<i "shift+tab
set guicursor=    "在neovim中取消鼠标样式

call plug#begin('~/.vim/plugged')
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mg979/vim-xtabline'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
" function
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'voldikss/vim-floaterm'
Plug 'skanehira/preview-markdown.vim'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'tpope/vim-surround'
" themes
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'kevinhwang91/rnvimr'
call plug#end()

colorscheme dracula
set background=dark
hi Normal guibg=NONE ctermbg=NONE


" --------------------------------------------------------------
" airline 设置
" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='simple'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}

" --------------------------------------------------------------
" nerdtree 设置
map <C-n> :NERDTreeToggle<CR> 
let NERDTreeShowHidden=1
" ctrl + n 显示/隐藏目录
" Nerdtree ctrl + w 切换目录和文件

" --------------------------------------------------------------
" indentline设置
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" --------------------------------------------------------------
" rainbow配置
 let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" --------------------------------------------------------------
" vimte配置
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

" --------------------------------------------------------------
" ultisnips配置
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" --------------------------------------------------------------
" xtabline配置
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1


" coc 配置
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp','coc-tsserver',
                              \'coc-highlight', 'coc-python', 'coc-clangd',
                              \'coc-cmake','coc-git', 'coc-vimtex', 
                              \'coc-snippets', 'coc-emoji']"


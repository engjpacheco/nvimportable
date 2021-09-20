"Plugins
call plug#begin('~/.nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/AutocomplPop'
Plug 'markonm/traces.vim'
Plug 'tpope/vim-surround'
Plug 'ThePrimeagen/vim-be-good'
Plug 'preservim/nerdtree'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-scripts/tComment'
Plug 'preservim/nerdcommenter'
Plug 'rstacruz/sparkup'
Plug 'dhruvasagar/vim-table-mode'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'matze/vim-move'
Plug 'unblevable/quick-scope'
Plug 'neovim/nvim-lspconfig'

call plug#end()


"Sets
set number
set mouse=a
set numberwidth=4
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set complete+=kspell
set completeopt=menuone,longest
set path+=**
set completeopt=menuone,noinsert


"NerdComment
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

"Table mode Settings
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

"Vim move settings
let g:move_key_modifier = 'C'

"Theme Settings

let g:gruvbox_bg='hard'
colorscheme gruvbox
let g:gruvbox_transparent_bg = 1
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark = 'hard'
set bg=dark


"Keymaps Config
let mapleader= " "
let NERDTreeQuitOnOpen=1

"Mapping
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>W w!<CR>
nmap <Leader>t :terminal<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>p :!python %<CR>
nmap <Leader>tm :TableModeToggle
nmap <Leader><Leader>v :CtrlP ~\AppData\Local\nvim\<CR>
nmap <Leader><Leader>h :CtrlP ~\<CR>
nmap <leader>V :VimBeGood<CR>

"inoremaps
imap ;; <Esc>
" inoremap ( ()<esc>i
" this is a text for a mapping the esc, her is another attempt   [ []<esc>i
" inoremap { {}<esc>i
" inoremap < <><esc>i
" inoremap ' ''<esc>i

"noremaps
noremap S yiw :%s/^<C-r><C-a>//g<left><left>

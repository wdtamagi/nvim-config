call plug#begin()
Plug 'morhetz/gruvbox'

Plug 'terryma/vim-multiple-cursors'

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-tern'
Plug 'mhartington/nvim-typescript'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-ultisnips'

Plug 'jiangmiao/auto-pairs'
call plug#end()

"General
set hidden
set number
set mouse=a
set inccommand=split

"Leader key
let mapleader="\<space>"
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Share clipboard
set clipboard=unnamed

"Theme
colorscheme gruvbox
set background=dark

"Search
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

"Buffer
nnoremap <c-b> :Buffers<cr>

"Completion
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set shortmess+=c

"Snippets
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

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

Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
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
set clipboard=unnamedplus

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

"Easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" Fuzzy search
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

"Snippets
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

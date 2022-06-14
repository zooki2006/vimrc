set hidden

set mouse=a

set number relativenumber
set numberwidth=2
set clipboard+=unnamedplus

syntax enable

set path+=**

set wildmenu


let mapleader=" "

" Vertically center in insert mode
autocmd InsertEnter * norm zz
" toggle auto comment
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>


" enable spell checking

" map <leader>s :setlocal spell! spelllang=en_gb

" toggle auto indent
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>
" tabcontrol
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Up> :tabnew<CR> 
nnoremap <silent> <C-Down> :tabclose<CR>


nnoremap <silent><c-c> <Cmd>exe v:count1 . "ToggleTerm"<cr>
"call plug#begin('~/.config/nvim/plugged')
"Plug 'vimwiki/vimwiki'
"Plug 'preservim/nerdtree'
"Plug 'jsit/toast.vim' 
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"call plug#end()

" Plugin config
lua require('plugins')
nnoremap <silent> a <cmd>Telescope find_files<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" let g:NERDTreeShowHidden=1
nnoremap <silent> <C-a> :NERDTreeToggle<CR>
" nnoremap <silent> <C-n> :set wrap!<CR>
" set statusline+=%{get(b:,'gitsigns_status','')}

" Disable Arrow keys in Normal mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" Disable Arrow keys in Insert mode
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>
set ve+=onemore
" colorscheme tokyonight
colorscheme toast
" colorscheme slate

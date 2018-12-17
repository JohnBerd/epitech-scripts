syntax enable
set background=dark
colorscheme gruvbox
set mouse=a
set nu
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set nohlsearch

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

filetype on
filetype plugin on
filetype indent on

execute pathogen#infect()

autocmd bufnewfile *.c so ~/.vim/epitech_header
autocmd bufnewfile *.h so ~/.vim/epitech_header
autocmd bufnewfile Makefile so ~/.vim/epitech_header_make

autocmd VimLeave *.c :normal 7gg=G
autocmd VimLeave *.h :normal 7gg=G

autocmd FileType c :iabbrev main int main(int ac, char **av)<left>

set undodir=~/.vim/undodir
set undofile

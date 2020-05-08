" vim: syntax=vim
" Environment {
    " Basics {
        set nocompatible        " Must be first line
        set background=dark     " Assume a dark background
    " }

    " Start vim-plug {
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'
    " }
" }

" Bundle {
    " Editor {
        Plugin 'ntpeters/vim-better-whitespace'
        Plugin 'jiangmiao/auto-pairs'
        Plugin 'Yggdroot/indentLine'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes' " {
            let g:airline_theme='molokai'
        " }
    " }

    " Tracing and Debug {
        Plugin 'majutsushi/tagbar' " {
            :nmap <F8> :TagbarToggle<CR>
            "auto move cursor to tagbar window.
            let g:tagbar_autofocus = 1
        " }
        Plugin 'charz/multi-cscope-db'
    " }

    " C/C++ {
        Plugin 'octol/vim-cpp-enhanced-highlight'
    " }
" }


" Environment {
    " End {
        call vundle#end()            " required
        syn on
        filetype plugin indent on    " required
    " }
" }

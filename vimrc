
" General software development options.
syntax on
colorscheme desert
filetype indent plugin on
set autoindent
set colorcolumn=80
set textwidth=80
set number
" Autowrap text on textwidth; comments on textwidth; start new lines with
" comment leaders.
set formatoptions=tcr


" Plugins: https://github.com/junegunn/vim-plug
" ViM Plugins
" Plugins are listed before language-specific options to allow for
" the setting of options that rely on plugins.
" Initial setup:
" *  Run setup.py as per YCM instructions
" *  :PlugInstall to set up more of vim-go
" *  :GoInstallBinaries
call plug#begin('~/.vim/plugged')
" YouCompleteMe for code completion.
" https://github.com/ycm-core/YouCompleteMe/blob/master/README.md#installation
" Bear in mind this is platform-dependent installation instructions e.g. macvim.
" ./install.py --all
Plug 'valloric/youcompleteme'
" vim-go for goimports (imports and formatting)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Syntastic for linting.
" Be careful to get pylint3 via pip3 and add to PATH the output of
" $ pip3 show --files pylint
Plug 'vim-syntastic/syntastic'
" Format with yapf -- get from pip3
" You will need to edit
" .vim/plugged/yapf/plugins/vim/autoload/yapf.vim
" to update it to yapf3, or symlink /usr/bin/yapf to yapf3
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
call plug#end()

" Python options
" Spaces not tabs.
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePost *.go :YAPF
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1 
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pylint_exec = 'pylint'
let g:syntastic_python_checkers = ['pylint']
command YAPF :call yapf#YAPF()
" Format on write.
autocmd BufWritePost *.py :YAPF

" Golang options
" It's surprising, but :GoImports also formats the file.
" Add `export GOPATH=$HOME/go` to your .bashrc.
autocmd Filetype go setlocal formatprg=gofmt
" Format on write.
autocmd BufWritePost *.go :GoImports

" Other cool things you forget about ViM:
" :terminal " opens a terminal inside of ViM.
" Ctrl+N, Ctrl+\, Ctrl+N then enters normal mode inside that terminal

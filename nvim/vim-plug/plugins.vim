" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" If you want to display icons, then use one of these plugins:
"Plug 'kyazdani42/nvim-web-devicons' " lua

"Plug 'ryanoasis/vim-devicons' " vimscript


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


set number
"set relativenumber
:highlight LineNr ctermfg=grey
":highlight LineNr guifg=#050505


":se mouse+=a

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
  
    Plug 'cormacrelf/vim-colors-github'


    Plug 'itchyny/lightline.vim'

call plug#end()

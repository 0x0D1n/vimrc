"CONFIGURATION FILE FOR VIM 

set nocompatible	 	"required
filetype off			"required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some-path')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins below (older versions of Vundle used Bundle instead of
" Plugin)

"...
Plugin 'dracula/vim'		"Dark theme - https://draculatheme.com/vim/
"For ycpm -> Install cmake + libraries then run ~/.vim/bundle/youcompleteme/install.py"
Plugin 'valloric/youcompleteme'	"Auto complete for coding
Plugin 'tpope/vim-fugitive'	"Git wrapper
Plugin 'scrooloose/nerdtree'	"File Manager

" All of your Plugins must be added before the following line
call vundle#end()		"required
filetype plugin indent on	"required


" KEY BINDS - Most taken from : https://github.com/amix/vimrc
" Setting leader to ,
let mapleader = ","

" Search forwards
map <space> /
" Search backwards
map <c-space> ?
" Disable search 
map <silent> <leader><cr> :noh<cr>

" NerdTree Management
map <leader>nn :NERDTreeToggle<CR>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" Codding
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $w ""<esc>i
inoremap $e <><esc>i


" Other Stuff
set number "Set line numbers

"$ source ~/.vimrc < To source the new vimrc 
"Finally :PluginInstall in vim

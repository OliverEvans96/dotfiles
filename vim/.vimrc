""" Tabs & Line Numbers
set number
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set expandtab " Insert spaces, not tabs
set nosmartindent

" Two space tabs for Typescript
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2

" Highlight column 80
"set cc=80

""" Syntax highlighting and filetype plugins
filetype on
syntax on

""" For vim-latex - http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
let g:tex_indent_brace=0

" Disable auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""Include vim-latex
"let &runtimepath.=',/home/oliver/.vim/vim-latex'

""" Compile PDFs
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='arara -v $*'

"" Use arara instead
""" BibTeX
"let g:Tex_BibtexFlavor = 'biber'
"let g:Tex_MultipleCompileFormats='pdf,bib'

""" Python
vnoremap <F8> :!python<CR>
noremap \lp :!clear && ipython %<CR>

""" Asymptote
noremap \la :!clear && asy % &<CR>


""" Julia
noremap \lj :!clear && julia %<CR>

""" Bash
noremap \lb :!clear &&  /bin/bash % && printf "\nBash Done" && read<CR>

""" Fortran
noremap \lf :!clear && gfortran % -o %:r.out && ./%:r.out<CR>

""" Vundle (VIM package manager)
set nocompatible              " required
filetype off                  " required

""" Pathogen
execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-fugitive'
Plugin 'rosenfeld/conque-term'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafgarland/typescript-vim'
Plugin 'mihaifm/vimpanel'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" Window navigation
:noremap <C-Right> <C-W><Right>
:noremap <C-Left> <C-W><Left>
:noremap <C-Up> <C-W><Up>
:noremap <C-Down> <C-W><Down>

""" Maximize/Unmaximize tabs
nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

""" Split options
set splitright
set splitbelow

""" NERDTree
:noremap <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set ttymouse=xterm2
""" Enable mouse
set mouse=a
""" Keep scroll assigned to moving cursor, not window
"map <ScrollWheelUp> 3OA
"map <ScrollWheelDown> 3OB

""" Spell check
autocmd BufRead,BufNewFile *.tex setlocal spell
set spelllang=en_us
set spellfile=~/.vim/spell.add
set spellcapcheck=""

""" Lilypond
"filetype off
"set runtimepath+=/usr/share/lilypond/current/vim/
":noremap \lm :! lilypond %<CR>

""" View (LaTeX/LilyPond)
noremap \lv :!evince %:r.pdf &<CR>
let g:Tex_ViewRule_pdf = "evince </dev/null &>/dev/null "

""" Set less obvious split border (tall, thin pipe)
set fillchars+=vert:│

""" Color scheme
"set background=light
"colorscheme solarized

""" Highlight
set hlsearch

""" Diff with current modified file & saved version
function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

""" Automatic Headers in new files
"source ~/.vim_headers/headers.vim

""" Airline status bar
" Functions for searching through themes
let w:AirlineThemeNumber=0
function NextAirlineTheme()
    " Directory containing themes
    let l:themedir="~/.vim/bundle/vim-airline-themes/autoload/airline/themes"
    " List themes
    let l:themelist=split(system("
        \ ls " . l:themedir . " |
         \ awk -F'.' '{print $1}' |
         \xargs echo"))
    " Count themes
    let l:numthemes = len(l:themelist)
    " Window-wide theme counter
    let w:AirlineThemeNumber=w:AirlineThemeNumber+1
    echo "Airline Theme: " . l:themelist[w:AirlineThemeNumber%numthemes]
    exe "AirlineTheme " . l:themelist[w:AirlineThemeNumber%numthemes]
endfunction
noremap <F4> :call NextAirlineTheme()<CR>
function PrevAirlineTheme()
    " Directory containing themes
    let l:themedir="~/.vim/bundle/vim-airline-themes/autoload/airline/themes"
    " List themes
    let l:themelist=split(system("
         \ ls " . l:themedir . " |
         \ awk -F'.' '{print $1}' |
         \xargs echo"))
    " Count themes
    let l:numthemes = len(l:themelist)
    " Window-wide theme counter
    let w:AirlineThemeNumber=w:AirlineThemeNumber-1
    echo "Airline Theme: " . l:themelist[w:AirlineThemeNumber%numthemes]
    exe "AirlineTheme " . l:themelist[w:AirlineThemeNumber%numthemes]
endfunction
noremap <F3> :call PrevAirlineTheme()<CR>

" Enable
set laststatus=2
" Set terminal theme
let g:airline_theme='base16_ocean'
" Disable buffer line (top bar)
"let g:airline#extensions#tabline#enabled = 0
" Don't show UTF-8[unix]
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'


"" Enable yaml syntax in cwl (Common Workflow Language) files
au BufReadPost *.cwl set filetype=yaml
au BufNewFile *.cwl set filetype=yaml

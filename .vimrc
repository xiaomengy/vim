set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'Sirver/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chrisbra/csv.vim'
Plugin 'christoomey/vim-sort-motion'
Plugin 'gmarik/Vundle.vim'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-searchindex'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/vim-easy-align'
Plugin 'nvie/vim-flake8'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'powerline/powerline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/csindent.vim'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required

call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]

"---------------------------------------------------------------------------
"---------------------------------------------------------------------------

nmap wm :WMToggle<cr>

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" codefmt settings
let g:clang_format_executable = 1

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" ultisnips settings
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" YCM settings
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'solarized'
let g:airline_solarized_normal_green = 1
let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'
set laststatus=2

" cpp highlight settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

filetype plugin indent on    " required

syntax enable
syntax on

set t_Co=256
set t_ut=

set background=dark
colorscheme solarized
hi Normal ctermbg=NONE

set number
set relativenumber
set ruler

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent
set cindent
" set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
" set backspace=indent,eol,start

set cursorline
set cursorcolumn
set cc=81
set incsearch
set hlsearch

" folding settings
set foldmethod=syntax
set nofoldenable

" tabwith
" autocmd Filetype python setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

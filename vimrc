filetype plugin indent on
syntax on

set ignorecase smartcase incsearch hlsearch
set ruler
set mouse=

set listchars=tab:>\ ,space:.,trail:*,precedes:<,extends:>,eol:$
set wrap

set encoding=utf-8
set fileencoding=utf-8
set scrolloff=5

" fix security
set modelines=0
set nomodeline

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Fix work with docker volumes.
" When writing a file a backup is made.
" This option make a copy of the file and overwirte the original one.
set backupcopy=yes

nnoremap <space> <nop>
xnoremap <space> <nop>
let mapleader="\<Space>"


call plug#begin()
Plug 'tpope/vim-commentary', { 'commit': '3654775824337f466109f00eaf6759760f65be34' }
Plug 'tpope/vim-surround', { 'commit': 'bf3480dc9ae7bea34c78fbba4c65b4548b5b1fea' }

" git
Plug 'tpope/vim-fugitive', { 'commit': '92c73bb0507338441733198d630a1fe5e7fdac3a' }
" git diff between branches
Plug 'idanarye/vim-merginal', { 'commit': 'd61345a6579a0e141499fc0deb4cdd0620d94344' }

Plug 'preservim/nerdtree', { 'commit': 'eed488b1cd1867bd25f19f90e10440c5cc7d6424' }
Plug 'SirVer/ultisnips', { 'commit': '5fc4862eea9bc72cf0f03c56a4a09fd76d9fee35' }
Plug 'jlanzarotta/bufexplorer', { 'commit': '1be66e253730fd186a5a789a67a337420f431a71' }
Plug 'jparise/vim-graphql', { 'commit': '4bf5d33bda83117537aa3c117dee5b9b14fc9333' }
Plug 'arthurxavierx/vim-caser', { 'commit': '6bc9f41d170711c58e0157d882a5fe8c30f34bf6' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }, 'commit': '3b7a962dc6db227d18faecb25c793431ce7e8640' }
Plug 'junegunn/fzf.vim', { 'commit': 'd5f1f8641b24c0fd5b10a299824362a2a1b20ae0' }
Plug 'junegunn/goyo.vim', { 'commit': 'a9c7283dce60ffcdec952384f6451ff42f8914f2' }

" async
Plug 'skywind3000/asyncrun.vim', { 'commit': '9f8e50033cb724d8856907a5fbf4685eb3efda24' }
Plug 'tpope/vim-dispatch', {'commit': '3505862b3898be5db3c78ba1b92c703349478d68'}

" format code (command example :FormatLines)
Plug 'google/vim-maktaba', { 'commit': 'f5127b339a9d776f220cc0393783c55def9d8ce0' }
Plug 'google/vim-codefmt', { 'commit': '605dc002cabfec67eded553298aba21ab392ea78' }
Plug 'google/vim-glaive', { 'commit': 'c17bd478c1bc358dddf271a13a4a025efb30514d' }

Plug 'mattn/vim-goimports', { 'commit': '5db0dcf7a11f6b5b89169b2e13aa7a376312cafc' }

Plug 'gruvbox-community/gruvbox', { 'commit': '34ad436b234c5095d46bb065c5b32780618df83f' }

call plug#end()

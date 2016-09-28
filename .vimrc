" Pathogen
execute pathogen#infect()
filetype on
filetype plugin on
filetype indent on

" Nerd Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
map <F2> :NERDTreeToggle<CR>

" colors
if has('gui_running')
  autocmd VimEnter * NERDTree
  syntax enable
  set background=dark
  colorscheme deep-space
else
  syntax enable
  set background=dark
  colorscheme deep-space
endif

" spaces & tabs
set tabstop=4
set softtabstop=4
set expandtab

" indent
set ai
set si

" UI Config
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set nowrap
set cmdheight=2
set ruler
set fileencoding=utf-8
set updatetime=250

" Search
set incsearch
set hlsearch
set ic
noremap <F3> :set hlsearch! hlsearch?<CR>

" scroll
noremap <C-H> zh
noremap <C-J> <C-e>
noremap <C-K> <C-y>
noremap <C-L> zl


" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

" diff
noremap <F5> :vnew<CR>
noremap <F6> :windo diffthis<CR>

" hex editor
noremap <F10> : %!xxd<CR>

" json formatter
noremap <F12> : %!python -m json.tool<CR>

" xml formatter
noremap <F9> : %!xmllint --format %<CR>

" statusline settings
set laststatus=2
set statusline=
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ ascii:\%03.3b
set statusline+=%5*\ hex:\%02.2B
set statusline+=%8*\ %=\ line:%l/%L\ (%03p%%)\            "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe


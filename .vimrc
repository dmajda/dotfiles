set nocompatible " Disable Vi compatibility

" ===== Appearance =====

set guioptions-=T        " Hide toolbars
set guioptions-=m        " Hide menu
set guifont=Monospace\ 8 " Use nice font
set number               " Show line numbers

" Highlight traling whitespace
autocmd ColorScheme * highlight TrailingWhitespace ctermbg=red guibg=red
autocmd InsertEnter * match TrailingWhitespace /some nonsense/
autocmd InsertLeave * match TrailingWhitespace /\s\+$/

colorscheme tir_black " Use nice color scheme

" ===== Behavior =====

let mapleader = "," " Map leader to more reachable key

set confirm         " Show confirmation messages
set wildmenu        " Show autocomplete menu for commands
set tabpagemax=1000 " Set maximum number of pages opened by the -p command line
                    " argument to a sane value

set directory=/tmp  " Set central directory for swap files

" ===== Editing =====

set nowrap       " Disable line wrapping
set textwidth=80 " Set maximum width of text being inserted

set autoindent   " Copy indent from current line when starting a new line
set smartindent  " Do smart autoindenting when staring a new line
set expandtab    " Insert spaces instead of <Tab>
set smarttab     " A <BS> will delete a 'shiftwidth' worth of spaces at the
                 " start of the line
set tabstop=2    " Number of spaces that a <Tab> counts for
set shiftwidth=2 " Number of spaces to use for each step of (auto)indent

" Select just pasted text
nmap gp `[v`]

" <S-Up> & <S-Down> scroll by default, which causes many scrolls by accident. I
" don't need these keys so I just disable them.
map  <S-Up>   <Nop>
map  <S-Down> <Nop>
imap <S-Up>   <Nop>
imap <S-Down> <Nop>

" ===== Search =====

set hlsearch  " Highlight all matches for the last used search pattern
set incsearch " Display search results incrementally

" ===== Grepping =====

set grepprg=ack         " Use 'ack' for grepping
set grepformat=%f:%l:%m " Set correct output format

" Commands to find the word under the cursor in all files in the current
" directory and its subdirectories - non-exactly and exactly. Keybindings are
" taken from EasyGrep.
nmap <leader>vv :exec "grep '" . expand("<cword>") . "'"<CR>
nmap <leader>vV :exec "grep '\\b" . expand("<cword>") . "\\b'"<CR>

" ===== File Types =====

" Git commit messages
autocmd FileType gitcommit setlocal textwidth=72

" PEG.js grammars
autocmd BufNewFile,BufReadPost *.pegjs set filetype=pegjs

" ===== Plugins =====

" NERD tree
let NERDTreeWinSize = 35
nmap <leader>t :NERDTreeToggle<CR>

" fuzzyfinder.vim
nmap <leader>f :FuzzyFinderFile \*\*/<CR>

" vcscommand.vim
let VCSCommandMapPrefix="<leader>x"

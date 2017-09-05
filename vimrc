"===============================================
" The .vimrc file for vim editor global setting
"
"Author: Oshyn Song<dualyangsong@gmail.com>
"Date: 2016-07-14
"      2017-08-25(modified)
"===============================================

" ================ Encoding setting"{{{
:set encoding=utf-8
:set fileencodings=utf-8,gbk,gb18030,gb2312,cp936,ucs-bom,euc-jp
:set termencoding=utf-8"}}}

" ================ Common setting"{{{
set number                  "set relativenumber
set nowrap                  "No wrap line, vs `set wrap`
set linebreak               "整词换行
set whichwrap=b,s,<,>,[,]   "光标可以从行首和行末跳到另一行
set fileformat=unix         "设置文件格式
set hidden                  "没有保存的缓冲区可以自动被隐藏
set nocompatible            "去掉有关vi一致性模式
set completeopt=longest,menu
set showmatch               "设置匹配模式，左括号匹配右括号
set history=100             "设置历史纪录行数
set confirm                 "未保存或只读文件，弹出确认
set clipboard+=unnamed      "共享剪切板
set backspace=2             "退格键处理indent、eol、start
set cmdheight=1             "命令行高度
set autoread                "auto reload file after modified
set virtualedit=block"}}}

" ================ File type setting"{{{
filetype on                "侦测文件类型
filetype plugin on         "允许插件
filetype indent on         "针对不同文件类型进行缩进
filetype plugin indent on  "自动补全
syntax enable              "启用语法
syntax on                  "语法高亮
set iskeyword+=_,$,@,%,#,- "有这些符号的单词不换行分割"}}}

" ================ Backup file setting"{{{
set nobackup             "Not use backup file
set noswapfile           "Not use swap file
set noundofile           "Not create undo file
set updatetime=6000      "Update to disk time"}}}

" ================ Search setting"{{{
set hlsearch    "高亮显示搜索结果
set incsearch   "实时跳转方便查询
set gdefault    "替换时所有的行内匹配的都替换"{{{"}}}
set showmatch   "高亮匹配的括号
set matchtime=5 "匹配括号高亮的时间0.5s
set ignorecase  "搜索忽略大小写
set smartcase
"set nohlsearch  "不高亮被搜索的句子
autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
"set nowrapscan  " Not search cyclically"}}}

" ================ Tab show style"{{{
set tabstop=4     "每个tab的宽度，(set ts=4)
set softtabstop=4 "退格键一次删除4个空格
set shiftwidth=4  "每一次缩进的空格数, (set sw=4)
set expandtab     "tab变为空格, (set et)
set tw=80
"set smarttab     "插入tab到每行开头
set list                       "显示制表符
"set listchars=tab:./,trail:.  "制表符显示为.
set listchars=tab:>-,trail:-   "制表符显示为>--"}}}

" ================ Indent setting"{{{
set autoindent       "自动缩进
set smartindent      "智能对齐
set cindent          "C样式缩进"}}}

" ================ Margin of right and bottom or top"{{{
set cc=100       "right bound(set colorcolumn=100)
set scrolloff=5  "margin of bottom or top"}}}

" ================ Status line setting (overrided by statusline plugin)"{{{
set noruler      "右下角显示光标位置信息(if laststatus=2, set ruler is useless)
set rulerformat=%30(%<%y\ %m%r%=0x%B\ %l,%c%V\ [%n]\ %P%)
set laststatus=2 "1启动时显示状态栏，2总是显示状态栏
set statusline=[%F]%m%r%h%w%=[Line:%l/%L,Column:%c][%p%%]\%{strftime(\"%Y-%m-%d\ %H:%M\")}
"highlight StatusLine guifg=SlateBlue guibg=White
"highlight StatusLineNC guifg=Gray guibg=White"}}}

" ================ Current column highlight"{{{
set cursorline           "highlight当前行
set cursorcolumn         "highlight当前列"}}}

" ================ Disable mouse for Unix"{{{
if has("unix")
    set mouse=
endif"}}}

" ================ Fold setting"{{{
set foldenable           "允许折叠
set foldmethod=marker    "手动折叠
set foldcolumn=1
set foldopen=undo
set foldopen=search"}}}

" ================ Color theme setting"{{{
set background=dark
set guifont=Consolas:h14
set t_Co=256
if &term == 'vt100' || &term == 'xterm'
    set term=xterm-256color
endif
"colorscheme MonokaiOshyn
highlight clear
if exists("syntax_on")
  syntax reset
endif
hi Cursor ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi LineNr ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE

"hi MatchParen ctermfg=197 ctermbg=NONE cterm=underline guifg=#f92672 guibg=NONE gui=underline
hi MatchParen ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE

hi StatusLine ctermfg=231 ctermbg=241 cterm=bold guifg=#f8f8f2 guibg=#64645e gui=bold
"hi StatusLine ctermfg=16 ctermbg=227 cterm=NONE guifg=#000000 guibg=#ffff5f gui=NONE

hi TabLineSel ctermfg=16 ctermbg=154 cterm=NONE guifg=#000000 guibg=#afff00 gui=NONE
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE

"hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE
hi IncSearch ctermfg=232 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE

"hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Search ctermfg=NONE ctermbg=233 cterm=NONE guifg=NONE guibg=NONE gui=underline

hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guifg=#75715e guibg=#272822 gui=NONE
hi FoldColumn ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE

"hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE
hi Normal ctermfg=15 ctermbg=234 cterm=NONE guifg=#ffffff guibg=#000000 gui=NONE

hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi Conditional ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#46830c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0807 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#243955 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Function ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi Identifier ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=236 cterm=NONE guifg=#49483e guibg=#31322c gui=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Operator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE

"hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi Special ctermfg=15 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
"hi SpecialKey ctermfg=59 ctermbg=237 cterm=NONE guifg=#49483e guibg=#3c3d37 gui=NONE
hi SpecialKey ctermfg=235 ctermbg=NONE cterm=NONE guifg=#262626 guibg=NONE gui=NONE

hi Statement ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic

"hi String ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi String ctermfg=166 ctermbg=NONE cterm=NONE guifg=#df5f00 guibg=NONE gui=NONE

hi Tag ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=197 cterm=bold guifg=#f8f8f2 guibg=#f92672 gui=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold guifg=#75715e guibg=NONE gui=inverse,bold

"hi Type ctermfg=27 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Type ctermfg=27 ctermbg=NONE cterm=NONE guifg=#409fff guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Exception ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi Typedef ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE

" spell highlight
hi SpellBad ctermfg=255 ctermbg=203 cterm=NONE guifg=NONE guibg=NONE gui=undercurl guisp=Red
hi SpellCap ctermfg=255 ctermbg=12 cterm=NONE guifg=NONE guibg=NONE gui=undercurl guisp=Blue
hi SpellRare ctermfg=255 ctermbg=13 cterm=NONE guifg=NONE guibg=NONE gui=undercurl guisp=Magenta

" Named color
hi PureGreen ctermfg=15 ctermbg=NONE cterm=NONE guifg=#00ff00 guibg=NONE gui=NONE
hi PureBlue ctermfg=15 ctermbg=NONE cterm=NONE guifg=#0000ff guibg=NONE gui=NONE
hi PureYellow ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffff00 guibg=NONE gui=NONE
hi PureCyan ctermfg=15 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi PurePurple ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ff00ff guibg=NONE gui=NONE
hi PureGray ctermfg=15 ctermbg=NONE cterm=NONE guifg=#888888 guibg=NONE gui=NONE
hi BlackOnYellow ctermfg=16 ctermbg=227 cterm=NONE guifg=#000000 guibg=#ffff5f gui=bold
hi Red ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Green ctermfg=40 ctermbg=NONE cterm=NONE guifg=#00e000 guibg=NONE gui=NONE
hi Blue ctermfg=27 ctermbg=NONE cterm=NONE guifg=#409fff guibg=NONE gui=NONE
hi Yellow ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Cyan ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=none
hi YellowGreen ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi Purple ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Gray ctermfg=59 ctermbg=NONE cterm=NONE guifg=#49483e guibg=NONE gui=NONE
hi ErrorColor ctermfg=15 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi ErrorColor ctermfg=15 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Url ctermfg=27 ctermbg=NONE cterm=underline guifg=#409fff guibg=NONE gui=underline
hi Bold ctermfg=15 ctermbg=232 cterm=bold guifg=#f8f8f2 guibg=#272822 gui=Bold
hi Italic ctermfg=15 ctermbg=232 cterm=bold guifg=#f8f8f2 guibg=#272822 gui=italic"}}}

" ================ TagList setting"{{{
set tags=tags,./tags,../tags,../../tags,../../../tags
set tags+=~/gosdk/ctags
set autochdir
let Tlist_Auto_Open=1         "启动vim时自动打开                                                                                                                                                                                            |   ~
let Tlist_Show_One_File=1      "显示一个单个文件内的tag                                                                                                                                                                                      |   ~
let Tlist_Exit_OnlyWindow=1    "taglist窗口是最后一个窗口时退出vim                                                                                                                                                                           |   ~
"let Tlist_Sort_Type=name "设置tag排序顺序，默认为文件中出现顺序排序
let Tlist_Use_Right_Window=1   "设置显示到右侧，默认为左侧
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0"}}}

" ================ Gotags setting for tagbar"{{{
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',  
    \ 'kinds'     : [  
        \ 'p:package',  
        \ 'i:imports:1',  
        \ 'c:constants',  
        \ 'v:variables',  
        \ 't:types',  
        \ 'n:interfaces',  
        \ 'w:fields',  
        \ 'e:embedded',  
        \ 'm:methods',  
        \ 'r:constructor',  
        \ 'f:functions'  
    \ ],  
    \ 'sro' : '.',  
    \ 'kind2scope' : {  
        \ 't' : 'ctype',  
        \ 'n' : 'ntype'  
    \ },  
    \ 'scope2kind' : {  
        \ 'ctype' : 't',  
        \ 'ntype' : 'n'  
    \ },  
    \ 'ctagsbin'  : 'gotags',  
    \ 'ctagsargs' : '-sort -silent'  
    \ }"}}}

" ================ Netrw setting"{{{
let g:netrw_winsize = 20
let g:netrw_liststyle= 3  " archive
let g:netrw_menu = 0      " no menu
let g:netrw_preview = 1   " preview in vertical new window
let g:netrw_banner = 0    " no banner
"when browsing, 1: horizal, 2: vertical, 3: in new tab,
"4: in previous window, 5:<cr> will open the file as p
let g:netrw_browse_split = 3
let g:netrw_cursor = "ctags"
let g:netrw_chgwin = 2       " specifies a window number where file edits will take place
let g:netrw_winsize_ratio = 0.166666 " auto resize netrw width when change window
let g:netrw_show_path = 1
let g:netrw_use_errorwindow = 0 " dont use an extra window for errors
let g:netrw_indicate_current_file = 1 " auto change cursor of the tree in netrw"}}}

" ================ Python running setting"{{{
map <F5> :AutoPEP8<CR> :w<CR> :call RunPython()<CR>
function RunPython()
    let mp = &makeprg
    let ef = &errformat
    let exeFile = expand("%.t")
    setlocal makeprg=python \ -u
    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %/%.%#,%Z% [%^\]%\\@=%m
    silent make %
    copen
    let &makeprg = mp
    let &errorformat = ef
endfunction"}}}

" ================ C++ running setting"{{{
map <F6> :call CompileRunCpp()<CR>
func! CompileRunCpp()
	exec "w"
	exec "!g++ % -o %<"
	exec "! ./%<"
endfunc"}}}

" ================ Key map definition
:nmap <C-p> :tabp <CR>
:nmap <C-n> :tabn <CR>
:nmap <C-t> :TagbarToggle<CR>

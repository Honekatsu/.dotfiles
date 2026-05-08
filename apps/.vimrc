"この設定を行わないとSSH接続でコピペできない（サーバ側のクリップボードが使われてしまう）"
set clipboard=unnamed

"vi互換モードを使わない"
set nocompatible
"カーソルがある行のハイライト表示"
set cursorline
"マウス操作しない"
set mouse=
"TABキーで半角スペース挿入"
set expandtab
"TABキーで２コ半角スペース"
set softtabstop=2
"改行時等のインデント自動追加"
set autoindent
"行末より先にカーソルを置ける"
set virtualedit=onemore
"検索で大文字と小文字を区別しない"
set ignorecase
"検索に大文字が含まれていたら大文字と小文字を区別"
set smartcase
"\で最初の文字を入力したら検索開始"
set incsearch
"ファイルタイプ検出，ファイルタイププラグイン，インデントプラグイン"
filetype plugin indent on
"折りたたみ無効化"
set nofoldenable

"<表示>"
"行番号を表示"
set number
"シンタックスハイライトを有効化"
syntax on
"検索結果のハイライト表示"
set hlsearch
"スターテスバーを常時表示"
set laststatus=2
"補完の候補一覧表示"
set wildmenu

"<見た目>"
"カラースキーム"
"colorscheme pablo

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

inoremap { {}<LEFT>
inoremap ( ()<LEFT>

"<vim_markdownの設定>"
"LaTeX数式有効化"
let g:vim_markdown_math = 1
"YAML Front Matter有効化"
let g:vim_markdown_frontmatter = 1
"TOML Front Matter有効化"
let g:vim_markdown_toml_frontmatter = 1
"JSON Front Matter有効化"
let g:vim_markdown_json_frontmatter = 1
"リスト項目のインデントのスペース個数"
let g:cim_markdown_new_list_item_indent = 1


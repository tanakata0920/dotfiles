" プラグインが実際にインストールされるディレクトリ
"let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
"let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
"if &runtimepath !~# '/dein.vim'
"  if !isdirectory(s:dein_repo_dir)
"    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
"  endif
"  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
"endif



" 設定開始
"if dein#load_state(s:dein_dir)
"  call dein#begin(s:dein_dir)
"
"  " プラグインリストを収めた TOML ファイル
"  " 予め TOML ファイル（後述）を用意しておく
"  let g:rc_dir    = expand('~/.vim/rc')
"  let s:toml      = g:rc_dir . '/dein.toml'
"  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
"
"  " TOML を読み込み、キャッシュしておく
"  call dein#load_toml(s:toml,      {'lazy': 0})
"  call dein#load_toml(s:lazy_toml, {'lazy': 1})
"
"  " 設定終了
"  call dein#end()
"  call dein#save_state()
"endif

" もし、未インストールものものがあったらインストール
"if dein#check_install()
"  call dein#install()
"endif


"---------------------------
"" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
   
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
    
NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'evidens/vim-twig'

call neobundle#end()
     
" Required:
filetype plugin indent on
      
"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
       
"-------------------------
" End Neobundle Settings.
"-------------------------


"#####初期設定#####
syntax on "コードの色分け
colorscheme molokai
set t_Co=256
"#####表示設定#####
set autoindent "新しい行のインデントを現在行と同じにする
set expandtab "タブで挿入する文字をスペースに
set number "行番号を表示する
set title "編集中のファイル名を表示
"set cursorline "カーソルのある行にアンダーラインを引く
set showmatch "括弧入力時の対応する括弧を表示
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=4 "自動インデントの幅
set smartindent "オートインデント
set smarttab "新しい行を作った時に高度な自動インデント
set clipboard=unnamed,autoselect "OSのクリッポボードと連携
set matchpairs& matchpairs+=<:> "対応カッコに＜＞を追加
set backspace=eol,indent,start
set mouse=a
autocmd VimEnter * execute 'NERDTree'

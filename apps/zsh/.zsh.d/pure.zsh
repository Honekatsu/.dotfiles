# ==============================================================================
# Pure prompt
# ==============================================================================

# ------------------------------------------------------------------------------
# Pure読み込み前の設定
# ------------------------------------------------------------------------------

# リモートとの差分を取得
PURE_GIT_PULL=1

# untrackedファイルをdirty判定に含める
PURE_GIT_UNTRACKED_DIRTY=1

# コマンド実行時間を表示する閾値
PURE_CMD_MAX_EXEC_TIME=5

# プロンプト記号
PURE_PROMPT_SYMBOL='❯'
PURE_PROMPT_VICMD_SYMBOL='❮'

# ------------------------------------------------------------------------------
# Pureの表示設定
# ------------------------------------------------------------------------------

# Git情報を表示
zstyle ':prompt:pure:git' show yes

# dirty状態を簡易表示
zstyle ':prompt:pure:git:dirty' detailed no

# stash数を非表示
zstyle ':prompt:pure:git:stash' show no

# Pure標準のuser@host表示を無効化
# custom prefixで常時表示するため
zstyle ':prompt:pure:host' show no

# Node.jsバージョンを非表示
zstyle ':prompt:pure:environment:node_version' show no

# Python仮想環境を表示
zstyle ':prompt:pure:environment:virtualenv' show yes

# Nix shell情報を表示
zstyle ':prompt:pure:environment:nix-shell' show yes

# ------------------------------------------------------------------------------
# 色設定
# ------------------------------------------------------------------------------

# custom prefix: user@host
zstyle ':prompt:pure:custom:prefix' color '#8be9fd'

# custom suffix: 時刻
zstyle ':prompt:pure:custom:suffix' color '#6272a4'

# カレントディレクトリ
zstyle ':prompt:pure:path' color '#89b4fa'

# Gitブランチ
zstyle ':prompt:pure:git:branch' color '#bd93f9'

# キャッシュ中のGitブランチ
zstyle ':prompt:pure:git:branch:cached' color '#bd93f9'

# 未コミット変更
zstyle ':prompt:pure:git:dirty' color '#ff5555'

# merge、rebase、cherry-pickなどの状態
zstyle ':prompt:pure:git:action' color '#ffb86c'

# ahead / behind
zstyle ':prompt:pure:git:arrow' color '#f1fa8c'

# Pure標準のユーザー名
zstyle ':prompt:pure:user' color '#8be9fd'

# Pure標準のホスト名
zstyle ':prompt:pure:host' color '#8be9fd'

# rootユーザー
zstyle ':prompt:pure:user:root' color '#ff5555'

# コマンド実行時間
zstyle ':prompt:pure:execution_time' color '#6272a4'

# Python仮想環境
zstyle ':prompt:pure:virtualenv' color '#8be9fd'

# コマンド成功時のプロンプト記号
zstyle ':prompt:pure:prompt:success' color '#50fa7b'

# コマンド失敗時のプロンプト記号
zstyle ':prompt:pure:prompt:error' color '#ff5555'

# ------------------------------------------------------------------------------
# Pureのcustom prefix / suffix
# ------------------------------------------------------------------------------

prompt_pure_precustom() {
    # ユーザー名とホスト名
    psvar[22]=$(print -P '%n@%m')

    # 現在時刻
    psvar[23]=$(print -P '%D{%H:%M:%S}')
}

# ------------------------------------------------------------------------------
# Pure読み込み
# ------------------------------------------------------------------------------

autoload -Uz promptinit
promptinit
prompt pure


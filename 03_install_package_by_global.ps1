# ---------------------------
# ※ 管理者で実行すること。
# ---------------------------

# スクリプト実行ポリシー
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 

# 存在するディレクトリが入力されるまで継続
$exists = $FALSE
while(-! $exists){

    # インストール先ディレクトリ
    $env:SCOOP_GLOBAL=Read-Host 'globalパッケージのインストール先ディレクトリを入力 > '
    
    # 存在チェック
    $exists = Test-Path $env:SCOOP_GLOBAL
    if(-! $exists){
        "`t* 入力されたパスは存在しません。> " + $env:SCOOP_GLOBAL
    }
}

# 環境変数に設定
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')

# グローバルスコープでパッケージをインストール
# ※<app> を対象のパッケージに置き換え
# TODO: 外部入力に変更する
scoop install -g <app>
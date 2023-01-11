# スクリプト実行ポリシー
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 

# 存在するディレクトリが入力されるまで継続
$exists = $FALSE
while(-! $exists){

    # インストール先ディレクトリ
    $env:SCOOP_GLOBAL=Read-Host 'インストール先ディレクトリを入力 > '
    
    # 存在チェック
    $exists = Test-Path $env:SCOOP
    if(-! $exists){
        "`t* 入力されたパスは存在しません。> " + $env:SCOOP
    }
}

# 環境変数に設定
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

# インストール先ディレクトリ
$env:SCOOP_GLOBAL='E:\package\scoop\global\'

# scoopのインストールを実行
irm get.scoop.sh | iex

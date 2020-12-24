# アプリ開発環境コンテナ

## 利用目的

- node.js/SAMを使ったWebAPIの開発
- Vue.jsを使ったSPAの開発

## 環境情報

使えるもの
- git
- aws cli
- sam cli
- node
- vue-cli
- http-server

詳細は後で書く…かも。Dockerfileみてくださいｗ

## 環境構築手順

### フォルダ名変更

リソースをDL＆解凍し、batファイルが置かれているフォルダ名を任意の名前に変更する。  
⇒フォルダ名が作成されるコンテナの名称になります。

### Dockerイメージビルド＆コンテナ作成（初回だけ）

1. build-image.batを実行
2. create-container.batを実行

### コンテナ起動

- start.batを実行（VSCode接続時に起動することもできるので飛ばしてもOK）

### VSCodeで接続

- Remote Containersで作成されたコンテナに接続しターミナルを開く
- /appを開いて作業開始


### コンテナ停止

- stop.batを実行


## 補足

Dockerイメージ名は「vue-app」になります。  
変更したい場合はbatファイルを修正してください。

sam localには未対応（Docker in Dockerの設定ができてないので）

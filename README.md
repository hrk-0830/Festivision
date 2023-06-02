# Festivision
![15344FE9-8BD1-449A-97AA-CF5F655BFEAD_1_201_a](https://github.com/hrk-0830/Festivision/assets/124126723/8ea99600-72b7-4a23-8791-68135d983cbd)

* [概要](#概要)
* [使用している言語フレームワークのバージョン](＃使用している言語フレームワークのバージョン)
* [機能](#機能)
* [インストール方法](#インストール方法)
* [引用先](#引用先)

---

### 概要
・サイトのテーマ：日付の近いイベントが一目で見れる

・テーマを選んだ理由：今回のスキルテストの課題はカレンダーということで半端にスケジュール管理サイトを作ってしまうと
ありきたりな上に使い勝手が悪いと考えました。
なので、思い切って投稿をカレンダーの中に載せて空いている日に行けるイベントを探せるサイトを作りました。

・ターゲットユーザー：休みの日に外出はしたいが予定がない人

・主な利用シーン：予定を立てる際


### 使用している言語フレームワークのバージョン
- ruby 3.1.2
- Rails 6.1.7.3
- Bootstrap v4.5.3


### 機能
- ユーザー登録、ログイン、ログアウト機能
  - ユーザ情報の編集
- 投稿機能
  - 画像投稿
  - 投稿編集
  - 投稿削除
- いいね機能
- コメント機能
- フォロー機能
- ページネーション機能
- シンプルカレンダー



### インストール方法
~~~
$ cd Festivision
~~~
~~~
$ rails db:migrate
~~~
~~~
$ rails db:seed
~~~
~~~
$ yarn install
~~~
~~~
$ yarn add jquery bootstrap@4.6.2 popper.js
~~~
~~~
$ rails active_storage:install
~~~
~~~
$ bundle install
~~~

### 引用先
- 画像
  - https://www.photo-ac.com/
- ロゴ
  - https://www.shopify.com/jp/tools/logo-maker

### ログインについて
ログインに必要なメールアドレス及びパスワードは下記です。
- ユーザー1
  - メールアドレス：taro@example.com
  - パスワード：password
- ユーザー2
  - メールアドレス：hanako@example.com
  - パスワード：password
- ユーザー3
  - メールアドレス：jiro@example.com
  - パスワード：password

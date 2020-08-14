## pokemon-box

# 制作背景
ポケモンのゲームで優位に対戦するために、育成したポケモンの調整をメモしたり、ポケモンの能力を確認したりする事ができるアプリを作成したいと思いました。

# 概要
ユーザーの新規登録が出来ます。
ポケモン図鑑を見ることができます。
記事の投稿をすることができます。

# DEMO

①投稿機能
![demo](https://gyazo.com/9241547488bf0fe2545b58373fe6aa05/raw)

# 
②図鑑機能
![demo](https://gyazo.com/7d0d03a6a2d48b5a916e0def824da210/raw)

#
③ユーザーの新規登録
![demo](https://gyazo.com/bba77db69b2c67789a163057c8b93904/raw)

# 工夫したポイント
実際に使いやすいように、ユーザー目線に立ってレイアウトしました。

# 使用技術
Haml・SCSS・Ruby・Ruby on Rails

# 実装予定の内容

PokeAPIから個別のポケモンデータを取得して、自分の努力値調整と合わせて保存できるようにさせます。
上記に合わせて、6体ずつ選択してグループ登録できるようにさせます。
対戦中のログを手動で入力して保存できるようにさせます。


# DB設計

## usersテーブル

| column           |type               |options             |
|------------------|-------------------|--------------------|
| email            |string             |null:false          |
| password         |string             |null:false          |

## postsテーブル

| column           |type               |options             |
|------------------|-------------------|--------------------|
| title            |string             |null:false          |
| text             |text               |null:false          |
| user             |references         |null:false,foreign_key: true |


## pokemon_statusesテーブル

| column           |type               |options             |
|------------------|-------------------|--------------------|
| no               |integer            |                    |
| name             |string             |                    |
| type1            |string             |                    |
| type2            |string             |                    |
| hp               |integer            |                    |
| attack           |integer            |                    |
| deffence         |integer            |                    |
| special_attack   |integer            |                    |
| special_deffence |integer            |                    |
| speed            |integer            |                    |
| total            |integer            |                    |


# README

# アプリ名
## pokemon-box

# 制作背景
## ポケモンのゲームで遊んでいると、自分で育成した個体の調整を忘れることがありました。それを管理するためにこのアプリを作ろうと思いました。

#　実装予定の内容
## インクルメンタルサーチによるpostsの検索をできるようにします。
## PokeAPIから個別のポケモンデータを取得して、自分の努力値調整と合わせて保存できるようにさせます。
## 上記に合わせて、6体ずつ選択してグループ登録できるようにさせます。
## 対戦中のログを手動で入力して保存できるようにさせます。


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


# README

# アプリ名
## pokemon-box

# 制作背景
## ポケモンのゲームで遊んでいると、自分で育成した個体の調整を忘れることがありました。それを管理するためにこのアプリを作ろうと思いました。

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


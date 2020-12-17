# アプリ名
shogi-paradise

# 概要
<p>次の一手の問題を投稿し、みんなと共有することができます。</p>

# 本番環境
## Heroku
https://shogi-paradise.herokuapp.com/
<p>ユーザー名：zengoma</p>
<p>パスワード：114514</p>

## AWS
http://.../
<p>ユーザー名：zengoma</p>
<p>パスワード：114514</p>

# 制作背景
<p>神の一手を見つけても自己満足で終わるなんてもったいない。</p>

# 使用技術（開発環境）
Ruby/Ruby on Rails/HTML/CSS/JavaScript/MySQL/Github/Visual Studio Code

# DB設計

## users テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| nickname         | string     | null: false |
| email            | string     | null: false |
| password         | string     | null: false |

### Association

- has_many :questions


## question テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | string     |                                |
| answer     | string     | null: false                    |
| commentary | string     |                                |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
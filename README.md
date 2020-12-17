# アプリ名
shogi-paradise

# 概要
<p>将棋の次の一手の問題を投稿し、みんなと共有することができます。</p>

# 本番環境
## Heroku
https://shogi-paradise.herokuapp.com/

### テストアカウント
<p>メールアドレス：test@gmail.com</p>
<p>パスワード：test123</p>

# 制作背景
<p>将棋の研究で発見した素晴らしい手を出題するための作りました。</p>

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
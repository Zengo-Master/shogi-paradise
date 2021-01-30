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
<p>Twitterで、将棋で発見した面白い手を紹介している人が多くおられます。それらを共有できればみんなの勉強になると思い、当アプリを開発しました。</p>

# 使用技術（開発環境）
Ruby/Ruby on Rails/HTML/CSS/MySQL/Github/Visual Studio Code

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
| kifu       | text       |                                |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
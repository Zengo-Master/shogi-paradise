class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions

  with_options presence: true do
    validates :nickname
    # メールアドレスの正規表現、一意性
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }
    # パスワードは6文字以上、半角英数字混合
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'is not mixed with half-width alphanumeric characters' }, length: { minimum: 8 }
    # 姓はひらがな、カタカナ、漢字
    validates :password_confirmation
  end
end

class Question < ApplicationRecord
  belongs_to :user
  has_one_attached :image
end

with_options presence: true do
  validates :image
  validates :answer
end
class Question < ApplicationRecord
  belongs_to :user
end


with_options presence: true do
  validates :image
  validates :answer
end
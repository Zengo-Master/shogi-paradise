class Question < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :answer
  end

  def self.search(search)
    if search != ""
      Question.where('title LIKE(?)', "%#{search}%")
    else
      Question.all
    end
  end
end
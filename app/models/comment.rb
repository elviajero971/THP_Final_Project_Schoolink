class Comment < ApplicationRecord
  belongs_to :subject
  belongs_to :user
  has_many :comment_likes, dependent: :destroy
  has_many :comment_dislikes, dependent: :destroy
  has_many :answers, dependent: :destroy
end

class Answer < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :answer_likes, dependent: :destroy
  has_many :answer_dislikes, dependent: :destroy
end

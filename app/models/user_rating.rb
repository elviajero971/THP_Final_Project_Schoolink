class UserRating < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :subject, dependent: :destroy
  
end

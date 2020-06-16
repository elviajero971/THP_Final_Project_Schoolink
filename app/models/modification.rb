class Modification < ApplicationRecord
  belongs_to :user
  belongs_to :subject

  validates :user_id, presence: true
  validates :subject_id, presence: true
  validates :content_type, presence: true
end

class Modification < ApplicationRecord
  belongs_to :user
  belongs_to :subject

  validates :user_id, presence: true
  validates :subject_id, presence: true
  validates :content, presence: true

  def done?
    if self.done == true
      return "Terminé"
    else 
      return "En attente"
    end
  end
  
end
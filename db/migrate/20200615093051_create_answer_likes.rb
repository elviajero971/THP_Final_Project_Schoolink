class CreateAnswerLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_likes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :answer, foreign_key: true
      
      t.timestamps
    end
  end
end

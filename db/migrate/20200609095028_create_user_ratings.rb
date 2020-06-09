class CreateUserRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ratings do |t|
      t.integer :user_rating
      
      t.belongs_to :user, foreign_key: true
      t.belongs_to :subject, foreign_key: true

      t.timestamps
    end
  end
end

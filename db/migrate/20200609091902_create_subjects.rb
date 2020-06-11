class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title
      t.text :content
      t.string :difficulty
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end

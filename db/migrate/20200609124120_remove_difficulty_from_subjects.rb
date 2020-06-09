class RemoveDifficultyFromSubjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :subjects, :difficulty
    add_column :subjects, :difficulty, :string
  end
end
class CreateJoinValidateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :join_validate_subjects do |t|
      t.belongs_to :subject, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
    add_index :join_validate_subjects, [:subject_id, :user_id], unique: true
  end
end

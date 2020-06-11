class AddColumnToJoinTables < ActiveRecord::Migration[5.2]
  def change
    add_index :join_fav_subjects, [:subject_id, :user_id], unique: true
    add_index :join_read_subjects, [:subject_id, :user_id], unique: true
    add_index :join_validate_subjects, [:subject_id, :user_id], unique: true
  end
end

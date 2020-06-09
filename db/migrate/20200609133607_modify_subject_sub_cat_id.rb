class ModifySubjectSubCatId < ActiveRecord::Migration[5.2]
  def change
    remove_column :sub_categories, :subject_id
    add_reference :subjects, :sub_category, index: true
  end
end

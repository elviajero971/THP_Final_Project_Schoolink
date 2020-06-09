class ModifyCategoriesSubCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :sub_category_id
    add_reference :sub_categories, :category, index: true
  end
end

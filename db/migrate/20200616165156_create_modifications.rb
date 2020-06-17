class CreateModifications < ActiveRecord::Migration[5.2]
  def change
    create_table :modifications do |t|
      t.belongs_to :user, index: true
      t.belongs_to :subject, index: true
      t.text :content
      t.boolean :done, default: false

      t.timestamps
    end
  end
end

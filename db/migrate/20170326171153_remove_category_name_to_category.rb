class RemoveCategoryNameToCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :category_name, :string
  end
end

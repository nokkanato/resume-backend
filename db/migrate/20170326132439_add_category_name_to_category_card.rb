class AddCategoryNameToCategoryCard < ActiveRecord::Migration[5.0]
  def change
    add_column :category_cards, :category_name, :string
  end
end

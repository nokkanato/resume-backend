class AddUserIdToCategoryCard < ActiveRecord::Migration[5.0]
  def change
    add_column :category_cards, :user_id, :string
  end
end

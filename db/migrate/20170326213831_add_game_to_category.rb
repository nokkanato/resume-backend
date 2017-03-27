class AddGameToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :gamer, :string
  end
end

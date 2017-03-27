class AddDriverToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :driver, :string
  end
end

class AddCookToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :cook, :string
  end
end

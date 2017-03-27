class AddTypeToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :swimmer, :string
    add_column :categories, :nurse, :string
    add_column :categories, :teacher, :string
    add_column :categories, :artist, :string
    add_column :categories, :creation, :string
    add_column :categories, :developer, :string
    add_column :categories, :pilot, :string
    add_column :categories, :accountance, :string
    add_column :categories, :babysister, :string
    add_column :categories, :gambler, :string
    add_column :categories, :others, :string
  end
end

class AddSportToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :sport, :string
    add_column :categories, :trainer, :string
  end
end

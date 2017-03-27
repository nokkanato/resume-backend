class AddFirstNameToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :first_name, :string
  end
end

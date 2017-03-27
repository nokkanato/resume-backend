class RemoveFistNameToCard < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :fist_name, :string
  end
end

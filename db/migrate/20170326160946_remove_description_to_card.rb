class RemoveDescriptionToCard < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :Description, :string
  end
end

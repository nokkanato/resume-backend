class AddCardIdToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :card_id, :int
  end
end

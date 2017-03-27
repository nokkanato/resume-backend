class CreateCategoryCards < ActiveRecord::Migration[5.0]
  def change
    create_table :category_cards do |t|

      t.timestamps
    end
  end
end

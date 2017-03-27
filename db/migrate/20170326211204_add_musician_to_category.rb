class AddMusicianToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :musician, :string
  end
end

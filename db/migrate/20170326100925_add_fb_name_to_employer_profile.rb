class AddFbNameToEmployerProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employer_profiles, :fb_name, :string
  end
end

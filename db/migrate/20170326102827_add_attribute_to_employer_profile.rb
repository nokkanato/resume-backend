class AddAttributeToEmployerProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employer_profiles, :first_name, :string
    add_column :employer_profiles, :last_name, :string
  end
end

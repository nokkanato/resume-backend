class AddFirstNameToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :first_name, :string
  end
end

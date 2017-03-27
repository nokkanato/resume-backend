class RemoveFirstNameToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :first_name, :string
  end
end

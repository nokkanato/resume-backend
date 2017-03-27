class RemoveLastNameToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :last_name, :string
  end
end

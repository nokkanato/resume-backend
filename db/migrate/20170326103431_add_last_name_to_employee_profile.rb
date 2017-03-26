class AddLastNameToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :last_name, :string
  end
end

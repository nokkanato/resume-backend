class AddNameToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :name, :string
  end
end

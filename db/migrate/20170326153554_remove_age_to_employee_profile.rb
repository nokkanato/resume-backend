class RemoveAgeToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :age, :string
  end
end

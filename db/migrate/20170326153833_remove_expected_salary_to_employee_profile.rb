class RemoveExpectedSalaryToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :expected_salary, :string
  end
end

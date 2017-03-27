class RemoveExperienceToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :experience, :string
  end
end

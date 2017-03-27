class RemoveSpecialtiesToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :specialties, :string
  end
end

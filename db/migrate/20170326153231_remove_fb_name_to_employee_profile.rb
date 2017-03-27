class RemoveFbNameToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :fb_name, :string
  end
end

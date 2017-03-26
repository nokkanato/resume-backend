class RemoveUsernameFromEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :employee_profiles, :username, :string
  end
end

class AddEmailToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :email, :string
  end
end

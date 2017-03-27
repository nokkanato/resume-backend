class AddAddressToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :address, :string
  end
end

class AddPhoneNoToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :phone_no, :string
  end
end

class CreateEmployeeProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_profiles do |t|
      t.string :username
      t.string :specialties
      t.string :age
      t.string :education
      t.string :experience
      t.string :expected_salary
      t.string :description
      t.string :fb_name

      t.timestamps
    end
  end
end

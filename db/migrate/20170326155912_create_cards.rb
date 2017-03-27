class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :fist_name
      t.string :last_name
      t.string :specialties
      t.string :age
      t.string :education
      t.string :experience
      t.string :expected_salary
      t.string :Description
      t.string :fb_name

      t.timestamps
    end
  end
end

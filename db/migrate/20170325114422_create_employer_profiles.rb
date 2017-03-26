class CreateEmployerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :employer_profiles do |t|
      t.string :username
      t.string :postion_need
      t.string :requirement
      t.string :salary_suggest
      t.string :description

      t.timestamps
    end
  end
end

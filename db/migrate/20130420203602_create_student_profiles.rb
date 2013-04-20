class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.integer :userID

      t.timestamps
    end
  end
end

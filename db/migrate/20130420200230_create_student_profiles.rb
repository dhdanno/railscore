class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.int :userid

      t.timestamps
    end
  end
end

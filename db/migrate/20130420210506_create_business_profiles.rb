class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end

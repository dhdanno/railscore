class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :content
      t.string :requiredskills

      t.timestamps
    end
  end
end

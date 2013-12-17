class CreateCelebrityData < ActiveRecord::Migration
  def change
    create_table :celebrity_data do |t|
      t.string :name
      t.string :image
      t.string :profession
      t.text :article
      t.datetime :dob

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.date :date_of_birth
      t.timestamps
    end
  end
end

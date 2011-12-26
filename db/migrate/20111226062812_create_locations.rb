class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :locationclass
      t.string :name
      t.string :phone
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end

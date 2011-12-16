class CreateLocates < ActiveRecord::Migration
  def change
    create_table :locates do |t|
      t.string :name
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end

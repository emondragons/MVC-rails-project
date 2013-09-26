class CreateLocations < ActiveRecord::Migration
  def change
  	drop_table :locations
    create_table :locations do |t|
      t.float :longitude
      t.float :latitude
      t.string :address
      t.references :user, index: true

      t.timestamps
    end
  end
end

class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end

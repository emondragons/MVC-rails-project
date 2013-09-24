class CreateVendorCategories < ActiveRecord::Migration
  def change
    create_table :vendor_categories do |t|
      t.references :vendor, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end

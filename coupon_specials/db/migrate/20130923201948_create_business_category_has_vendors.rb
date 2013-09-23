class CreateBusinessCategoryHasVendors < ActiveRecord::Migration
  def change
    create_table :business_category_has_vendors do |t|
      t.references :vendor, index: true
      t.references :business_category, index: true

      t.timestamps
    end
  end
end

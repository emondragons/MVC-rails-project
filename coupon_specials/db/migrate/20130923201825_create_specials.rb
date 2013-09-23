class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :photo
      t.string :description
      t.string :title
      t.references :vendor, index: true

      t.timestamps
    end
  end
end

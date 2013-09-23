class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :value
      t.integer :tier
      t.references :user, index: true

      t.timestamps
    end
  end
end

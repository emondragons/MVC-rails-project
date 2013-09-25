class CreateUsers < ActiveRecord::Migration
  def change
    drop_table :users
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :zipcode
      t.string :password_digest
      t.string :type

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.references :user_type
      t.string :hashed_password
      t.string :salt
      t.text :notes

      t.timestamps
    end
    add_index :users, :user_type_id
  end
end

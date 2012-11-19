class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :type
      t.text :notes

      t.timestamps
    end
  end
end

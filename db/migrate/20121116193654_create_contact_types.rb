class CreateContactTypes < ActiveRecord::Migration
  def change
    create_table :contact_types do |t|
      t.string :type
      t.text :notes

      t.timestamps
    end
  end
end

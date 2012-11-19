class CreateInstallers < ActiveRecord::Migration
  def change
    create_table :installers do |t|
      t.references :user
      t.string :name
      t.string :phone
      t.references :installer_status
      t.text :notes

      t.timestamps
    end
    add_index :installers, :user_id
    add_index :installers, :installer_status_id
  end
end

class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.references :package_status
      t.string :title
      t.string :description
      t.string :price
      t.string :commission_partner
      t.string :commission_agent

      t.timestamps
    end
    add_index :packages, :package_status_id
  end
end

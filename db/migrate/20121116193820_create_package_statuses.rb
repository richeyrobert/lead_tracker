class CreatePackageStatuses < ActiveRecord::Migration
  def change
    create_table :package_statuses do |t|
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

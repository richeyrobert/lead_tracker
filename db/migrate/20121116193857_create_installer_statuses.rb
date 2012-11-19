class CreateInstallerStatuses < ActiveRecord::Migration
  def change
    create_table :installer_statuses do |t|
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

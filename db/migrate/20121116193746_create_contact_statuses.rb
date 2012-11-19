class CreateContactStatuses < ActiveRecord::Migration
  def change
    create_table :contact_statuses do |t|
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

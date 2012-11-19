class CreateLeadStatuses < ActiveRecord::Migration
  def change
    create_table :lead_statuses do |t|
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

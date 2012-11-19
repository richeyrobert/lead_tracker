class CreatePartnerStatuses < ActiveRecord::Migration
  def change
    create_table :partner_statuses do |t|
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

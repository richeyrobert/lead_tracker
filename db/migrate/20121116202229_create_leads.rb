class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.references :lead_source
      t.references :lead_status
      t.references :package
      t.string :name
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.text :notes
      t.references :partner
      t.references :agent
      t.references :installer
      t.references :lead_step
      t.boolean :customer_paid
      t.boolean :partner_paid

      t.timestamps
    end
    add_index :leads, :lead_source_id
    add_index :leads, :lead_status_id
    add_index :leads, :package_id
    add_index :leads, :partner_id
    add_index :leads, :agent_id
    add_index :leads, :installer_id
    add_index :leads, :lead_step_id
  end
end

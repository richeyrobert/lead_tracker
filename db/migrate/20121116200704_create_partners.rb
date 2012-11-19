class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.references :partner_type
      t.references :partner_status
      t.string :name
      t.string :contact
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :website
      t.string :taxid
      t.text :notes

      t.timestamps
    end
    add_index :partners, :partner_type_id
    add_index :partners, :partner_status_id
  end
end

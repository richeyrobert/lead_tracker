class CreatePartnerTypes < ActiveRecord::Migration
  def change
    create_table :partner_types do |t|
      t.string :partner_type
      t.text :notes

      t.timestamps
    end
  end
end

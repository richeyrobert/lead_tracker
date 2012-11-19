class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.references :agent_type
      t.references :agent_status
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

      t.timestamps
    end
    add_index :agents, :agent_type_id
    add_index :agents, :agent_status_id
    add_index :agents, :partner_id
  end
end

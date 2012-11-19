class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :partner
      t.references :agent
      t.references :installer
      t.references :user
      t.date :date
      t.time :time
      t.references :appointment_status
      t.string :gcalendar
      t.string :title
      t.string :location
      t.text :notes
      t.boolean :completed

      t.timestamps
    end
    add_index :appointments, :partner_id
    add_index :appointments, :agent_id
    add_index :appointments, :installer_id
    add_index :appointments, :user_id
    add_index :appointments, :appointment_status_id
  end
end

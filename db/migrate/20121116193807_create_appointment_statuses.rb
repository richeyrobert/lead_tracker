class CreateAppointmentStatuses < ActiveRecord::Migration
  def change
    create_table :appointment_statuses do |t|
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

class CreateStepsLogs < ActiveRecord::Migration
  def change
    create_table :steps_logs do |t|
      t.references :lead_step
      t.timestamp :date_time
      t.references :lead
      t.references :user
      t.text :notes

      t.timestamps
    end
    add_index :steps_logs, :lead_step_id
    add_index :steps_logs, :lead_id
    add_index :steps_logs, :user_id
  end
end

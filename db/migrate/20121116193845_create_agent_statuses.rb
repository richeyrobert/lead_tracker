class CreateAgentStatuses < ActiveRecord::Migration
  def change
    create_table :agent_statuses do |t|
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

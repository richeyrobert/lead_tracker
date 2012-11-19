class CreateAgentTypes < ActiveRecord::Migration
  def change
    create_table :agent_types do |t|
      t.string :type
      t.text :notes

      t.timestamps
    end
  end
end

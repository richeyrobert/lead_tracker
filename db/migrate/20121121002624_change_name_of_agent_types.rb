class ChangeNameOfAgentTypes < ActiveRecord::Migration
  def up
  	rename_column :agent_types, :type, :agent_type
  end

  def down
  	rename_column :agent_types, :agent_type, :type
  end
end

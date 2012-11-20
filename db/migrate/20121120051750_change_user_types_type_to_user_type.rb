class ChangeUserTypesTypeToUserType < ActiveRecord::Migration
  def up
  	rename_column :user_types, :type, :user_type
  end

  def down
  	rename_column :user_types, :user_type, :type
  end
end

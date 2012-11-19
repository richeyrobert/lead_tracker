class Installer < ActiveRecord::Base
  belongs_to :user
  belongs_to :installer_status
  attr_accessible :name, :notes, :phone
end

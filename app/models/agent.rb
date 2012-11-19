class Agent < ActiveRecord::Base
  belongs_to :agent_type
  belongs_to :agent_status
  belongs_to :partner
  attr_accessible :address1, :address2, :city, :email, :name, :notes, :phone1, :phone2, :state, :zip
end

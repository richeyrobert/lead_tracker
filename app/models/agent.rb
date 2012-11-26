class Agent < ActiveRecord::Base
  belongs_to :agent_type
  belongs_to :agent_status
  belongs_to :partner
  has_one :user
  attr_accessible :address1, :address2, :city, :email, :name, :notes, :phone1, :phone2, :state, :zip, :agent_type_id, 
  	:agent_status_id, :partner_id, :user_id #, :lead_source_id, :package_id, :lead_status_id, :partner_id, :agent_id, :lead_step_id
  #accepts_nested_attributes_for :leads
end

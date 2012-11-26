class Lead < ActiveRecord::Base
  belongs_to :lead_source
  belongs_to :lead_status
  belongs_to :package
  belongs_to :partner
  belongs_to :agent
  belongs_to :installer
  belongs_to :lead_step
  attr_accessible :address1, :address2, :city, :customer_paid, :email, :name, :notes, :partner_paid, :phone1, :phone2, :state, :zip,
  	:lead_source_id, :package_id, :lead_status_id, :partner_id, :agent_id, :lead_step_id
  accepts_nested_attributes_for :agent
end

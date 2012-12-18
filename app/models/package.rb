class Package < ActiveRecord::Base
  belongs_to :package_status
  attr_accessible :commission_agent_id, :commission_partner_id, :description, :price, :title, :package_status_id

  belongs_to :commission_partner, :class_name => "Partner"
  belongs_to :commission_agent, :class_name => "Agent"
end

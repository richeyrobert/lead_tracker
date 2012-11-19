class Package < ActiveRecord::Base
  belongs_to :package_status
  attr_accessible :commission_agent, :commission_partner, :description, :price, :title
end

class Partner < ActiveRecord::Base
  belongs_to :partner_type
  belongs_to :partner_status
  attr_accessible :address1, :address2, :city, :contact, :email, :name, :notes, :phone1, :phone2, :state, :taxid, :website, :zip
end

class NewLeadMailer < ActionMailer::Base
  default from: "info@rocketnext.com"

  def new_lead_email(lead)
  	@lead = lead

  	mail(:to => "rob@rocketnext.com", :subject => "New Sales Lead Received!")
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if User.count == 0
	user = User.create :name => "Rob Richey", :email => "rob@rocketnext.com", :password => "testing123", 
	:password_confirmation => "testing123", :user_type_id => 1, :notes => "default admin user"
end
if Agent.count == 0
	user = Agent.create :agent_type_id => 1, :agent_status_id => 1, :name => "Rob Richey", :email => "rob@rocketnext.com",
	:phone1 => "4352154256", :address1 => "1506 W 540 N", :city => "St. George", :state => "UT", :zip => "84770", 
	:partner_id => 1
end
if AgentStatus.count == 0
	stats = Array.new
	stats = ["Active", "In-Active"]
	start_id = 1
	stats.each do |s|
		as = AgentStatus.create :id => start_id, :status => s, :notes => "Status for agents that are #{s}."
		start_id += 1
	end
end
if AgentType.count == 0
	stats = Array.new
	stats = ["RocketNext", "Partner", "Sub-Partner"]
	start_id = 1
	stats.each do |s|
		as = AgentType.create :id => start_id, :agent_type => s, :notes => "Type of agents, belongs to #{s}."
		start_id += 1
	end
end
if AppointmentStatus.count == 0
	stats = Array.new
	stats = ["Scheduled", "Rescheduled", "Postponed", "Failed"]
	start_id = 1
	stats.each do |s|
		as = AppointmentStatus.create :id => start_id, :status => s, :notes => "Appointment Status is #{s}."
		start_id += 1
	end
end
if ContactStatus.count == 0
	#this is not currently implemented
	#stats = Array.new
	#stats = ["Scheduled", "Rescheduled", "Postponed", "Failed"]
	#start_id = 1
	#stats.each do |s|
	#	as = ContactStatus.create :id => start_id, :status => s, :notes => "Type of agents, belongs to #{s}."
	#	start_id += 1
	#end
end
if ContactType.count == 0
	#this is not currently implemented
	#stats = Array.new
	#stats = ["Scheduled", "Rescheduled", "Postponed", "Failed"]
	#start_id = 1
	#stats.each do |s|
	#	as = ContactType.create :id => start_id, :status => s, :notes => "Type of agents, belongs to #{s}."
	#	start_id += 1
	#end
end
if InstallerStatus.count == 0
	stats = Array.new
	stats = ["Active", "In-Active", "Error", "Other"]
	start_id = 1
	stats.each do |s|
		as = InstallerStatus.create :id => start_id, :status => s, :notes => "Type of agents, belongs to #{s}."
		start_id += 1
	end
end
if LeadSource.count == 0
	stats = Array.new
	stats = ["Walk-in", "Advertising", "Word of Mouth", "Referral", "Other"]
	start_id = 1
	stats.each do |s|
		as = LeadSource.create :id => start_id, :source => s, :notes => "Type of agents, belongs to #{s}."
		start_id += 1
	end
end
if LeadStatus.count == 0
	stats = Array.new
	stats = ["New", "Schedule", "Survey", "Install", "Billing", "Complete", "Fail", "Archive"]
	start_id = 1
	stats.each do |s|
		as = LeadStatus.new :id => start_id, :status => s, :notes => "Type of agents, belongs to #{s}."
		start_id += 1
		as.save
	end
end
if LeadStep.count == 0
	stats = Array.new
	stats = ["Null", "Contact Lead", "Waiting", "New", 
		"Schedule Survey", 
		"Survey", "Survey Pass", "Survey Fail",
		"Schedule Install",
		"Install Scheduled", "Install Complete", "Install Postponed", "Install Failed", "Install Rescheduled",
		"Billing", "Billing Created", "Customer Recurring", "Customer Paid", "Customer Pending Payment",
		"Invoice Sent", "Payment Received", "Billing Complete",
		"Need Rescheduled", "Schedule Problem", "Customer Scheduled",
		"Billing Other Issue 1", "Billing Other Issue 2", "Billing Other Issue 3",
		"Complete", "Fail"]
	start_id = 0
	stats.each do |s|
		as = LeadStep.create :id => start_id, :step => s, :notes => "Type of steps, belongs to #{s}."
		start_id += 1
	end
end
if PackageStatus.count == 0
	stats = Array.new
	stats = ["Active", "Promotional", "Inactive", "Expired"]
	start_id = 0
	stats.each do |s|
		as = PackageStatus.create :id => start_id, :status => s, :notes => "Type of packages, belongs to #{s}."
		start_id += 1
	end
end
if PartnerStatus.count == 0
	stats = Array.new
	stats = ["Active", "Inactive", "BlackList"]
	start_id = 0
	stats.each do |s|
		as = PartnerStatus.create :id => start_id, :status => s, :notes => "Partner Statuses, belongs to #{s}."
		start_id += 1
	end
end
if PartnerType.count == 0
	stats = Array.new
	stats = ["RocketNext", "RN Sub-Partner", "SalesMan", "Partner's Sub-Partner"]
	start_id = 0
	stats.each do |s|
		as = PartnerType.create :id => start_id, :partner_type => s, :notes => "Type of partners, belongs to #{s}."
		start_id += 1
	end
end
if UserType.count == 0
	stats = Array.new
	stats = ["Admin", "Scheduler", "Agent", "Sub-Agent", "SalesMan"]
	start_id = 0
	stats.each do |s|
		as = UserType.create :id => start_id, :user_type => s, :notes => "Type of partners, belongs to #{s}."
		start_id += 1
	end
end
# if Package.count == 0
# 	stats = Array.new
# 	stats = ["150 install 39.99 month", "50 install 29.99 month"]
# 	start_id = 0
# 	stats.each do |s|
# 		as = UserType.create :id => start_id, :user_type => s, :notes => "Type of partners, belongs to #{s}."
# 		start_id += 1
# 	end
# end
# if Partner.count == 0
# Create a new partner for RocketNEXT
# 	stats = Array.new
# 	stats = ["Admin", "Scheduler", "Agent", "Sub-Agent", "SalesMan"]
# 	start_id = 0
# 	stats.each do |s|
# 		as = UserType.create :id => start_id, :user_type => s, :notes => "Type of partners, belongs to #{s}."
# 		start_id += 1
# 	end
# end







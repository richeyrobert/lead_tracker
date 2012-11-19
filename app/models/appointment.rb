class Appointment < ActiveRecord::Base
  belongs_to :partner
  belongs_to :agent
  belongs_to :installer
  belongs_to :user
  belongs_to :appointment_status
  attr_accessible :completed, :date, :gcalendar, :location, :notes, :time, :title
end

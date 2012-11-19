class StepsLog < ActiveRecord::Base
  belongs_to :lead_step
  belongs_to :lead
  belongs_to :user
  attr_accessible :date_time, :notes
end

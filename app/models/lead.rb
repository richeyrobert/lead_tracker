class Lead < ActiveRecord::Base
  belongs_to :lead_source
  belongs_to :lead_status
  belongs_to :package
  belongs_to :partner
  belongs_to :agent
  belongs_to :installer
  belongs_to :lead_step
  has_many :lead_notes
  belongs_to :assigned_user, :class_name => 'User'
  attr_accessible :address1, :address2, :city, :customer_paid, :email, :name, :notes, :partner_paid, :phone1, :phone2, :state, :zip,
  	:lead_source_id, :package_id, :lead_status_id, :partner_id, :agent_id, :lead_step_id, :assigned_user_id
  accepts_nested_attributes_for :agent

  def full_address
    if address1.blank?
      " "
    else
      "#{address1} \n#{city}, #{state} #{zip}"
    end
  end

  def all_phones
    "#{phone1} \n #{phone2}"
  end

  def next_step
    unless lead_step.blank?
      this_step = lead_step.id
      this_step = this_step + 1 
      next_step = LeadStep.where(:id => this_step)
      next_step.first
    else 
      LeadStep.find(0)
    end
  end

  def current_step 
    unless lead_step.blank?
      current_step = LeadStep.where(:id => lead_step.id)
      current_step.first\
    else
      LeadStep.find(0)
    end
  end

  def previous_step
    unless lead_step.blank?
      this_step = lead_step.id
      this_step = this_step - 1 
      previous_step = LeadStep.where(:id => this_step)
      previous_step = previous_step.first
      if previous_step.blank?
        LeadStep.find(0)
      else 
        return previous_step
      end
    else 
     LeadStep.find(0)
    end
  end
  def make_lead_note
    ln = LeadNote.new
    ln.notes = "This was automatically created at #{Time.now}."
    ln.save
  end

  def get_progress
    #this will get a percentage value of the progress this lead has gone through
    this_step = lead_step.id
    percent = "10"
    case this_step
      when 1..3 then percent = "20"
      when 4..7 then percent = "40"
      when 8..12 then percent = "60"
      when 13..26 then percent = "80"
      when 27 then percent = "100"
      else percent = "0"
        this_step
    end
    #return this_step

  end

end

class Lead < ActiveRecord::Base
  belongs_to :lead_source
  belongs_to :lead_status
  belongs_to :package
  belongs_to :partner
  belongs_to :agent
  belongs_to :installer
  belongs_to :lead_step
  attr_accessible :address1, :address2, :city, :customer_paid, :email, :name, :notes, :partner_paid, :phone1, :phone2, :state, :zip,
  	:lead_source_id, :package_id, :lead_status_id, :partner_id, :agent_id, :lead_step_id, :installer_id
  accepts_nested_attributes_for :agent

  def full_address
    "#{address1} \n#{city}, #{state} #{zip}"
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
end

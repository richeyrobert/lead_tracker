class LeadsController < ApplicationController
  before_filter :authenticate
  # GET /leads
  # GET /leads.json
  def index
    @leads = Lead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leads }
    end
  end

  # GET /leads/1
  # GET /leads/1.json
  def show
    @lead = Lead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead }
      format.js
    end
  end

  # GET /leads/new
  # GET /leads/new.json
  def new
    @lead = Lead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead }
    end
  end

  # GET /leads/1/edit
  def edit
    @lead = Lead.find(params[:id])
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(params[:lead])

    respond_to do |format|
      if @lead.save
        #this is where I can send an email or a text on lead creation
        NewLeadMailer.new_lead_email(@lead).deliver
        @lead.lead_notes.create(:id => @lead.id, 
          :notes =>"This lead was automatically created at #{Time.now}.", 
          :user_id => current_user.id, :lead_step_id => 1)
        format.html {redirect_to '/leads/my_lead_status', notice: 'Lead was successfully created.'}
        #format.html { redirect_to @lead, notice: 'Lead was successfully created.' }
        format.json { render json: @lead, status: :created, location: @lead }
      else
        format.html { render action: "new" }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leads/1
  # PUT /leads/1.json
  def update
    @lead = Lead.find(params[:id])

    respond_to do |format|
      if @lead.update_attributes(params[:lead])
        @lead.lead_notes.create(:notes =>
          "Lead information changed by user: #{current_user.name} at #{Time.now}.", 
          :user_id => current_user.id, :lead_step_id => @lead.lead_step_id)
        
        format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
        format.json { head :no_content }
        format.js 
      else
        format.html { render action: "edit" }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy

    respond_to do |format|
      format.html { redirect_to leads_url }
      format.json { head :no_content }
    end
  end
  #My stuff begins here
  def new_lead
    @lead = Lead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead }
    end
  end

  def my_lead_status
    @my_leads = Lead.where(:agent_id => current_user.agent)
  end

  def partner_lead_status
    @my_leads = Lead.where(:partner_id => current_user.partner)
  end

  def lead_admin
    #@groups = ["New", "Site Survey", "Install", "Schedule", "Billing", "Complete", "Archive", "Fail"]
    #@groups = LeadStatus.all
    @groups = LeadStatus.all.collect {|p| p.status }
    if params[:group].blank?
      @leads = Lead.all   
    else
      #figure out what the different queries are here
      case params[:group]
        when "New"
          @leads = Lead.where("lead_status_id = ?", 1)
        when "Site Survey"
          @leads = Lead.where("lead_status_id = ?", 2)
        when "Install"
          @leads = Lead.where("lead_status_id = ?", 3)
        when "Schedule"
          @leads = Lead.where("lead_status_id = ?", 4)
        when "Billing"
          @leads = Lead.where("lead_status_id = ?", 5)
        when "Complete"
          @leads = Lead.where("lead_status_id = ?", 6)
        when "Archive"
          @leads = Lead.where("lead_status_id = ?", 7)
        when "Fail"
          @leads = Lead.where("lead_status_id = ?", 8)
	when "All"
	  @leads = Lead.all
        else
          @leads = Lead.all
      end

          
    end
  end
end

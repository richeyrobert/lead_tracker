class LeadsController < ApplicationController
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
        format.html { redirect_to @lead, notice: 'Lead was successfully created.' }
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
        format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
        format.json { head :no_content }
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
end

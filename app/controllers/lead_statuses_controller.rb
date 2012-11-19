class LeadStatusesController < ApplicationController
  # GET /lead_statuses
  # GET /lead_statuses.json
  def index
    @lead_statuses = LeadStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lead_statuses }
    end
  end

  # GET /lead_statuses/1
  # GET /lead_statuses/1.json
  def show
    @lead_status = LeadStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead_status }
    end
  end

  # GET /lead_statuses/new
  # GET /lead_statuses/new.json
  def new
    @lead_status = LeadStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead_status }
    end
  end

  # GET /lead_statuses/1/edit
  def edit
    @lead_status = LeadStatus.find(params[:id])
  end

  # POST /lead_statuses
  # POST /lead_statuses.json
  def create
    @lead_status = LeadStatus.new(params[:lead_status])

    respond_to do |format|
      if @lead_status.save
        format.html { redirect_to @lead_status, notice: 'Lead status was successfully created.' }
        format.json { render json: @lead_status, status: :created, location: @lead_status }
      else
        format.html { render action: "new" }
        format.json { render json: @lead_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lead_statuses/1
  # PUT /lead_statuses/1.json
  def update
    @lead_status = LeadStatus.find(params[:id])

    respond_to do |format|
      if @lead_status.update_attributes(params[:lead_status])
        format.html { redirect_to @lead_status, notice: 'Lead status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lead_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_statuses/1
  # DELETE /lead_statuses/1.json
  def destroy
    @lead_status = LeadStatus.find(params[:id])
    @lead_status.destroy

    respond_to do |format|
      format.html { redirect_to lead_statuses_url }
      format.json { head :no_content }
    end
  end
end

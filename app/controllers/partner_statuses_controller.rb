class PartnerStatusesController < ApplicationController
  # GET /partner_statuses
  # GET /partner_statuses.json
  def index
    @partner_statuses = PartnerStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partner_statuses }
    end
  end

  # GET /partner_statuses/1
  # GET /partner_statuses/1.json
  def show
    @partner_status = PartnerStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner_status }
    end
  end

  # GET /partner_statuses/new
  # GET /partner_statuses/new.json
  def new
    @partner_status = PartnerStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partner_status }
    end
  end

  # GET /partner_statuses/1/edit
  def edit
    @partner_status = PartnerStatus.find(params[:id])
  end

  # POST /partner_statuses
  # POST /partner_statuses.json
  def create
    @partner_status = PartnerStatus.new(params[:partner_status])

    respond_to do |format|
      if @partner_status.save
        format.html { redirect_to @partner_status, notice: 'Partner status was successfully created.' }
        format.json { render json: @partner_status, status: :created, location: @partner_status }
      else
        format.html { render action: "new" }
        format.json { render json: @partner_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partner_statuses/1
  # PUT /partner_statuses/1.json
  def update
    @partner_status = PartnerStatus.find(params[:id])

    respond_to do |format|
      if @partner_status.update_attributes(params[:partner_status])
        format.html { redirect_to @partner_status, notice: 'Partner status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_statuses/1
  # DELETE /partner_statuses/1.json
  def destroy
    @partner_status = PartnerStatus.find(params[:id])
    @partner_status.destroy

    respond_to do |format|
      format.html { redirect_to partner_statuses_url }
      format.json { head :no_content }
    end
  end
end

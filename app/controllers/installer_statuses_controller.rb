class InstallerStatusesController < ApplicationController
  # GET /installer_statuses
  # GET /installer_statuses.json
  def index
    @installer_statuses = InstallerStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @installer_statuses }
    end
  end

  # GET /installer_statuses/1
  # GET /installer_statuses/1.json
  def show
    @installer_status = InstallerStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @installer_status }
    end
  end

  # GET /installer_statuses/new
  # GET /installer_statuses/new.json
  def new
    @installer_status = InstallerStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @installer_status }
    end
  end

  # GET /installer_statuses/1/edit
  def edit
    @installer_status = InstallerStatus.find(params[:id])
  end

  # POST /installer_statuses
  # POST /installer_statuses.json
  def create
    @installer_status = InstallerStatus.new(params[:installer_status])

    respond_to do |format|
      if @installer_status.save
        format.html { redirect_to @installer_status, notice: 'Installer status was successfully created.' }
        format.json { render json: @installer_status, status: :created, location: @installer_status }
      else
        format.html { render action: "new" }
        format.json { render json: @installer_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /installer_statuses/1
  # PUT /installer_statuses/1.json
  def update
    @installer_status = InstallerStatus.find(params[:id])

    respond_to do |format|
      if @installer_status.update_attributes(params[:installer_status])
        format.html { redirect_to @installer_status, notice: 'Installer status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @installer_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installer_statuses/1
  # DELETE /installer_statuses/1.json
  def destroy
    @installer_status = InstallerStatus.find(params[:id])
    @installer_status.destroy

    respond_to do |format|
      format.html { redirect_to installer_statuses_url }
      format.json { head :no_content }
    end
  end
end

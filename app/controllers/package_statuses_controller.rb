class PackageStatusesController < ApplicationController
  # GET /package_statuses
  # GET /package_statuses.json
  def index
    @package_statuses = PackageStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @package_statuses }
    end
  end

  # GET /package_statuses/1
  # GET /package_statuses/1.json
  def show
    @package_status = PackageStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @package_status }
    end
  end

  # GET /package_statuses/new
  # GET /package_statuses/new.json
  def new
    @package_status = PackageStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @package_status }
    end
  end

  # GET /package_statuses/1/edit
  def edit
    @package_status = PackageStatus.find(params[:id])
  end

  # POST /package_statuses
  # POST /package_statuses.json
  def create
    @package_status = PackageStatus.new(params[:package_status])

    respond_to do |format|
      if @package_status.save
        format.html { redirect_to @package_status, notice: 'Package status was successfully created.' }
        format.json { render json: @package_status, status: :created, location: @package_status }
      else
        format.html { render action: "new" }
        format.json { render json: @package_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /package_statuses/1
  # PUT /package_statuses/1.json
  def update
    @package_status = PackageStatus.find(params[:id])

    respond_to do |format|
      if @package_status.update_attributes(params[:package_status])
        format.html { redirect_to @package_status, notice: 'Package status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @package_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_statuses/1
  # DELETE /package_statuses/1.json
  def destroy
    @package_status = PackageStatus.find(params[:id])
    @package_status.destroy

    respond_to do |format|
      format.html { redirect_to package_statuses_url }
      format.json { head :no_content }
    end
  end
end

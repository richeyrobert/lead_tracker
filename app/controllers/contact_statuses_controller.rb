class ContactStatusesController < ApplicationController
  # GET /contact_statuses
  # GET /contact_statuses.json
  def index
    @contact_statuses = ContactStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_statuses }
    end
  end

  # GET /contact_statuses/1
  # GET /contact_statuses/1.json
  def show
    @contact_status = ContactStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_status }
    end
  end

  # GET /contact_statuses/new
  # GET /contact_statuses/new.json
  def new
    @contact_status = ContactStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_status }
    end
  end

  # GET /contact_statuses/1/edit
  def edit
    @contact_status = ContactStatus.find(params[:id])
  end

  # POST /contact_statuses
  # POST /contact_statuses.json
  def create
    @contact_status = ContactStatus.new(params[:contact_status])

    respond_to do |format|
      if @contact_status.save
        format.html { redirect_to @contact_status, notice: 'Contact status was successfully created.' }
        format.json { render json: @contact_status, status: :created, location: @contact_status }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_statuses/1
  # PUT /contact_statuses/1.json
  def update
    @contact_status = ContactStatus.find(params[:id])

    respond_to do |format|
      if @contact_status.update_attributes(params[:contact_status])
        format.html { redirect_to @contact_status, notice: 'Contact status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_statuses/1
  # DELETE /contact_statuses/1.json
  def destroy
    @contact_status = ContactStatus.find(params[:id])
    @contact_status.destroy

    respond_to do |format|
      format.html { redirect_to contact_statuses_url }
      format.json { head :no_content }
    end
  end
end

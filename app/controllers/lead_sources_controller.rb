class LeadSourcesController < ApplicationController
  # GET /lead_sources
  # GET /lead_sources.json
  def index
    @lead_sources = LeadSource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lead_sources }
    end
  end

  # GET /lead_sources/1
  # GET /lead_sources/1.json
  def show
    @lead_source = LeadSource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead_source }
    end
  end

  # GET /lead_sources/new
  # GET /lead_sources/new.json
  def new
    @lead_source = LeadSource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead_source }
    end
  end

  # GET /lead_sources/1/edit
  def edit
    @lead_source = LeadSource.find(params[:id])
  end

  # POST /lead_sources
  # POST /lead_sources.json
  def create
    @lead_source = LeadSource.new(params[:lead_source])

    respond_to do |format|
      if @lead_source.save
        format.html { redirect_to @lead_source, notice: 'Lead source was successfully created.' }
        format.json { render json: @lead_source, status: :created, location: @lead_source }
      else
        format.html { render action: "new" }
        format.json { render json: @lead_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lead_sources/1
  # PUT /lead_sources/1.json
  def update
    @lead_source = LeadSource.find(params[:id])

    respond_to do |format|
      if @lead_source.update_attributes(params[:lead_source])
        format.html { redirect_to @lead_source, notice: 'Lead source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lead_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_sources/1
  # DELETE /lead_sources/1.json
  def destroy
    @lead_source = LeadSource.find(params[:id])
    @lead_source.destroy

    respond_to do |format|
      format.html { redirect_to lead_sources_url }
      format.json { head :no_content }
    end
  end
end

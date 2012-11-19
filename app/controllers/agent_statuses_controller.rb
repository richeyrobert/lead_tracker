class AgentStatusesController < ApplicationController
  # GET /agent_statuses
  # GET /agent_statuses.json
  def index
    @agent_statuses = AgentStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agent_statuses }
    end
  end

  # GET /agent_statuses/1
  # GET /agent_statuses/1.json
  def show
    @agent_status = AgentStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agent_status }
    end
  end

  # GET /agent_statuses/new
  # GET /agent_statuses/new.json
  def new
    @agent_status = AgentStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agent_status }
    end
  end

  # GET /agent_statuses/1/edit
  def edit
    @agent_status = AgentStatus.find(params[:id])
  end

  # POST /agent_statuses
  # POST /agent_statuses.json
  def create
    @agent_status = AgentStatus.new(params[:agent_status])

    respond_to do |format|
      if @agent_status.save
        format.html { redirect_to @agent_status, notice: 'Agent status was successfully created.' }
        format.json { render json: @agent_status, status: :created, location: @agent_status }
      else
        format.html { render action: "new" }
        format.json { render json: @agent_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agent_statuses/1
  # PUT /agent_statuses/1.json
  def update
    @agent_status = AgentStatus.find(params[:id])

    respond_to do |format|
      if @agent_status.update_attributes(params[:agent_status])
        format.html { redirect_to @agent_status, notice: 'Agent status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agent_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_statuses/1
  # DELETE /agent_statuses/1.json
  def destroy
    @agent_status = AgentStatus.find(params[:id])
    @agent_status.destroy

    respond_to do |format|
      format.html { redirect_to agent_statuses_url }
      format.json { head :no_content }
    end
  end
end

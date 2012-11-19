class AgentTypesController < ApplicationController
  # GET /agent_types
  # GET /agent_types.json
  def index
    @agent_types = AgentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agent_types }
    end
  end

  # GET /agent_types/1
  # GET /agent_types/1.json
  def show
    @agent_type = AgentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agent_type }
    end
  end

  # GET /agent_types/new
  # GET /agent_types/new.json
  def new
    @agent_type = AgentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agent_type }
    end
  end

  # GET /agent_types/1/edit
  def edit
    @agent_type = AgentType.find(params[:id])
  end

  # POST /agent_types
  # POST /agent_types.json
  def create
    @agent_type = AgentType.new(params[:agent_type])

    respond_to do |format|
      if @agent_type.save
        format.html { redirect_to @agent_type, notice: 'Agent type was successfully created.' }
        format.json { render json: @agent_type, status: :created, location: @agent_type }
      else
        format.html { render action: "new" }
        format.json { render json: @agent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agent_types/1
  # PUT /agent_types/1.json
  def update
    @agent_type = AgentType.find(params[:id])

    respond_to do |format|
      if @agent_type.update_attributes(params[:agent_type])
        format.html { redirect_to @agent_type, notice: 'Agent type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_types/1
  # DELETE /agent_types/1.json
  def destroy
    @agent_type = AgentType.find(params[:id])
    @agent_type.destroy

    respond_to do |format|
      format.html { redirect_to agent_types_url }
      format.json { head :no_content }
    end
  end
end

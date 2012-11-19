class LeadStepsController < ApplicationController
  # GET /lead_steps
  # GET /lead_steps.json
  def index
    @lead_steps = LeadStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lead_steps }
    end
  end

  # GET /lead_steps/1
  # GET /lead_steps/1.json
  def show
    @lead_step = LeadStep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead_step }
    end
  end

  # GET /lead_steps/new
  # GET /lead_steps/new.json
  def new
    @lead_step = LeadStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead_step }
    end
  end

  # GET /lead_steps/1/edit
  def edit
    @lead_step = LeadStep.find(params[:id])
  end

  # POST /lead_steps
  # POST /lead_steps.json
  def create
    @lead_step = LeadStep.new(params[:lead_step])

    respond_to do |format|
      if @lead_step.save
        format.html { redirect_to @lead_step, notice: 'Lead step was successfully created.' }
        format.json { render json: @lead_step, status: :created, location: @lead_step }
      else
        format.html { render action: "new" }
        format.json { render json: @lead_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lead_steps/1
  # PUT /lead_steps/1.json
  def update
    @lead_step = LeadStep.find(params[:id])

    respond_to do |format|
      if @lead_step.update_attributes(params[:lead_step])
        format.html { redirect_to @lead_step, notice: 'Lead step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lead_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_steps/1
  # DELETE /lead_steps/1.json
  def destroy
    @lead_step = LeadStep.find(params[:id])
    @lead_step.destroy

    respond_to do |format|
      format.html { redirect_to lead_steps_url }
      format.json { head :no_content }
    end
  end
end

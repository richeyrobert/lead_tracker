class StepsLogsController < ApplicationController
  # GET /steps_logs
  # GET /steps_logs.json
  def index
    @steps_logs = StepsLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steps_logs }
    end
  end

  # GET /steps_logs/1
  # GET /steps_logs/1.json
  def show
    @steps_log = StepsLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steps_log }
    end
  end

  # GET /steps_logs/new
  # GET /steps_logs/new.json
  def new
    @steps_log = StepsLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steps_log }
    end
  end

  # GET /steps_logs/1/edit
  def edit
    @steps_log = StepsLog.find(params[:id])
  end

  # POST /steps_logs
  # POST /steps_logs.json
  def create
    @steps_log = StepsLog.new(params[:steps_log])

    respond_to do |format|
      if @steps_log.save
        format.html { redirect_to @steps_log, notice: 'Steps log was successfully created.' }
        format.json { render json: @steps_log, status: :created, location: @steps_log }
      else
        format.html { render action: "new" }
        format.json { render json: @steps_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steps_logs/1
  # PUT /steps_logs/1.json
  def update
    @steps_log = StepsLog.find(params[:id])

    respond_to do |format|
      if @steps_log.update_attributes(params[:steps_log])
        format.html { redirect_to @steps_log, notice: 'Steps log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steps_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps_logs/1
  # DELETE /steps_logs/1.json
  def destroy
    @steps_log = StepsLog.find(params[:id])
    @steps_log.destroy

    respond_to do |format|
      format.html { redirect_to steps_logs_url }
      format.json { head :no_content }
    end
  end
end

class RunsController < ApplicationController
  before_action :confirm_logged_in
  before_action :set_run, only: [:show, :edit, :update, :destroy]

  # GET /runs
  # GET /runs.json
  def index
    @runs = case session[:user_type]
    when "Runner" then Run.where(runner_id: session[:user_id])
    when "Admin" then Run.all
    end
  end

  # GET /runs/1
  # GET /runs/1.json
  def show
  end

  def runs_for_runner
    @runs = Run.where(id: session[user_id]).order('created_at DESC')
    render action: index
  end

  # GET /runs/new
  def new
    @run = Run.new
    @runner = Runner.find(session[:user_id])
  end

  # GET /runs/1/edit
  def edit
    @runner = Runner.find(Run.find(params[:id]).runner_id)
  end

  # POST /runs
  # POST /runs.json
  def create
    @run = Run.new(run_params)

    dog = Dog.find(@run.dog_id)

    if dog.additional_dog?
      @run.value = "silver"
    else
      @run.value = "gold"
    end

    respond_to do |format|
      if @run.save
        format.html { redirect_to @run, notice: 'Run was successfully created.' }
        format.json { render action: 'show', status: :created, location: @run }
      else
        format.html { render action: 'new' }
        format.json { render json: @run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runs/1
  # PATCH/PUT /runs/1.json
  def update
    respond_to do |format|
      if @run.update(run_params)
        format.html { redirect_to @run, notice: ' run was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runs/1
  # DELETE /runs/1.json
  def destroy
    @run.destroy
    respond_to do |format|
      format.html { redirect_to runs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run
      @run = Run.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def run_params
      params.require(:run).permit(:dog_id, :runner_id, :run_date, :duration, :map_url, :page, :value, :account_id)
    end
end

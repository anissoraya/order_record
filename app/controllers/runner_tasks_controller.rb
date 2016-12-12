class RunnerTasksController < ApplicationController
  before_action :set_runner_task, only: [:show, :edit, :update, :destroy]

  # GET /runner_tasks
  # GET /runner_tasks.json
  def index
    @runner_tasks = RunnerTask.all
  end

  # GET /runner_tasks/1
  # GET /runner_tasks/1.json
  def show
  end

  # GET /runner_tasks/new
  def new
    @runner = Runner.find(params[:runner_id])
    @runner_task = @runner.runner_tasks.build
  end

  # GET /runner_tasks/1/edit
  def edit
    @runner = Runner.find(params[:runner_id])
  end

  # POST /runner_tasks
  # POST /runner_tasks.json
  def create
    @runner = Runner.find(params[:runner_id])
    @runner_task = @runner.runner_tasks.build(runner_task_params)

    respond_to do |format|
      if @runner_task.save
        format.html { redirect_to runner_path(@runner), notice: 'Runner task was successfully created.' }
        format.json { render :show, status: :created, location: @runner_task }
      else
        format.html { render :new }
        format.json { render json: @runner_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runner_tasks/1
  # PATCH/PUT /runner_tasks/1.json
  def update
    respond_to do |format|
      if @runner_task.update(runner_task_params)
        format.html { redirect_to @runner_task, notice: 'Runner task was successfully updated.' }
        format.json { render :show, status: :ok, location: @runner_task }
      else
        format.html { render :edit }
        format.json { render json: @runner_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runner_tasks/1
  # DELETE /runner_tasks/1.json
  def destroy
    @runner_task.destroy
    respond_to do |format|
      format.html { redirect_to runner_path(@runner_task.runner_id), notice: 'Runner task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runner_task
      @runner_task = RunnerTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runner_task_params
      params.require(:runner_task).permit(:package_quantity, :order_id, :runner_id)
    end
end

class RunnersController < ApplicationController
  before_action :set_runner, only: [:show, :edit, :update, :destroy]

  # GET /runners
  # GET /runners.json
  def index
    @runners = Runner.all.paginate(:page => params[:page], :per_page => 10)
    if params[:search_runner]
      @runners =  Runner.search_runner(params[:search_runner]).paginate(:page => params[:page], :per_page => 10)
    else
      @runners = Runner.all.paginate(:page => params[:page], :per_page => 10)
    end
  end

  # GET /runners/1
  # GET /runners/1.json
  def show
    @runnertasks = RunnerTask.all.where(runner_id: @runner)
    if params[:target] == "Today"
      @orders = Order.where("runner_id = ? AND Date(order_date) = ? ", @runner.id, Date.today)
      else
      @orders = Order.where("runner_id = ? ", @runner.id)
      @orders2 = Order.where("runner_id = ?", @runner.id).group(:order_date)
    end
  end

  # GET /runners/new
  def new
    @runner = Runner.new
  end

  # GET /runners/1/edit
  def edit
  end

  # POST /runners
  # POST /runners.json
  def create
    @runner = Runner.new(runner_params)

    respond_to do |format|
      if @runner.save
        format.html { redirect_to @runner, notice: 'Runner was successfully created.' }
        format.json { render :show, status: :created, location: @runner }
      else
        format.html { render :new }
        format.json { render json: @runner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runners/1
  # PATCH/PUT /runners/1.json
  def update
    respond_to do |format|
      if @runner.update(runner_params)
        format.html { redirect_to @runner, notice: 'Runner was successfully updated.' }
        format.json { render :show, status: :ok, location: @runner }
      else
        format.html { render :edit }
        format.json { render json: @runner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runners/1
  # DELETE /runners/1.json
  def destroy
    @runner.destroy
    respond_to do |format|
      format.html { redirect_to runners_url, notice: 'Runner was successfully destroyed.' }
      format.json { head :no_content }
      format.js { render layout: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runner
      @runner = Runner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runner_params
      params.require(:runner).permit(:name, :phone)
    end
end

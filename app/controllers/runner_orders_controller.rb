class RunnerOrdersController < ApplicationController
  before_action :set_runner_order, only: [:show, :edit, :update, :destroy]

  # GET /runner_orders
  # GET /runner_orders.json
  def index
    @runner_orders = RunnerOrder.all
  end

  # GET /runner_orders/1
  # GET /runner_orders/1.json
  def show
      
  end

  # GET /runner_orders/new
  def new
    @order = Order.find(params[:order_id])
    @runner_order = @order.runner_orders.build
  end

  # GET /runner_orders/1/edit
  def edit
  end

  # POST /runner_orders
  # POST /runner_orders.json
  def create
    @order = Order.find(params[:order_id])
    @runner_order = @order.runner_orders.build(runner_order_params)

    respond_to do |format|
      if @runner_order.save
        format.html { redirect_to order_path(@order), notice: 'Runner order was successfully created.' }
        format.json { render :show, status: :created, location: @runner_order }
      else
        format.html { render :new }
        format.json { render json: @runner_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runner_orders/1
  # PATCH/PUT /runner_orders/1.json
  def update
    respond_to do |format|
      if @runner_order.update(runner_order_params)
        format.html { redirect_to @runner_order, notice: 'Runner order was successfully updated.' }
        format.json { render :show, status: :ok, location: @runner_order }
      else
        format.html { render :edit }
        format.json { render json: @runner_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runner_orders/1
  # DELETE /runner_orders/1.json
  def destroy
    @runner_order.destroy
    respond_to do |format|
      format.html { redirect_to runner_orders_url, notice: 'Runner order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runner_order
      @runner_order = RunnerOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runner_order_params
      params.require(:runner_order).permit(:order_id, :runner_id, :packaging_quantity)
    end
end

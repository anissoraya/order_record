class ChefOrdersController < ApplicationController
  before_action :set_chef_order, only: [:show, :edit, :update, :destroy]

  # GET /chef_orders
  # GET /chef_orders.json
  def index
    @chef_orders = ChefOrder.all
  end

  # GET /chef_orders/1
  # GET /chef_orders/1.json
  def show
  end

  # GET /chef_orders/new
  def new
    @order = Order.find(params[:order_id])
    @chef_order = @order.chef_orders.build
  end

  # GET /chef_orders/1/edit
  def edit
    @order = Order.find(params[:order_id])
  end

  # POST /chef_orders
  # POST /chef_orders.json
  def create
    @order = Order.find(params[:order_id])
    @chef_order = @order.chef_orders.build(chef_order_params)
    @chef_order.order = @order

    respond_to do |format|
      if @chef_order.save
        format.html { redirect_to order_path(@order), notice: 'Chef order was successfully created.' }
        format.json { render :show, status: :created, location: @chef_order }
      else
        format.html { render :new }
        format.json { render json: @chef_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chef_orders/1
  # PATCH/PUT /chef_orders/1.json
  def update
    respond_to do |format|
      if @chef_order.update(chef_order_params)
        format.html { redirect_to order_chef_order_path(@chef_order), notice: 'Chef order was successfully updated.' }
        format.json { render :show, status: :ok, location: @chef_order }
      else
        format.html { render :edit }
        format.json { render json: @chef_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chef_orders/1
  # DELETE /chef_orders/1.json
  def destroy
    @chef_order.destroy
    respond_to do |format|
      format.html { redirect_to chef_orders_url, notice: 'Chef order was successfully destroyed.' }
      format.json { head :no_content }
      format.js { render layout: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_order
      @chef_order = ChefOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chef_order_params
      params.require(:chef_order).permit(:chef_id, :order_id, :amount_cook)
    end
end

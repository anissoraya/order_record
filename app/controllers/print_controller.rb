class PrintController < ApplicationController
  def print_order
    if params[:date] != nil and params[:runner_id] != nil
        @date = Date.parse(params[:date])
        #@orders = Order.where("Date(order_date) = ? AND runner_id = ?", @date, params[:runner_id] )
        @runner = Runner.find(params[:runner_id])
        @data = Order.where(order_date: @date.midnight..@date.end_of_day, runner_id:params[:runner_id])
        @count1 = Order.where(order_date: @date.midnight..@date.end_of_day, runner_id:params[:runner_id]).count

        @sorted = @data.sort_by &:order_date

        @count = @data.uniq.pluck(:customer_id).count
    else
      @orders = Order.all
    end
  end

  def print_order_chef
    if params[:date] != nil
      @date = Date.parse(params[:date])
      @data = Order.where(order_date: @date.midnight..@date.end_of_day)
      @sorted = @data.sort_by &:order_date
      @count = @data.uniq.pluck(:customer_id).count
    end
  end

  def print_order_all
    if params[:date] != nil
      @date = Date.parse(params[:date])
      @data = Order.where(order_date: @date.midnight..@date.end_of_day)
      @sorted = @data.sort_by &:order_date
    end
  end
end

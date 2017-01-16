class PrintController < ApplicationController
  def print_order
    if params[:date] != nil and params[:runner_id] != nil
        @date = Date.parse(params[:date])
        #@orders = Order.where("Date(order_date) = ? AND runner_id = ?", @date, params[:runner_id] )
        @runner = Runner.find(params[:runner_id])
        @data = Order.where(order_date: @date.midnight..@date.end_of_day, runner_id:params[:runner_id])
        @sorted = @data.sort_by &:order_date


    else
      @orders = Order.all
    end
  end
end

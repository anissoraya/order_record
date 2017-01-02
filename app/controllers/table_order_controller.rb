class TableOrderController < ApplicationController
  def index
    @days = DayData.all
    @customers = Customer.all
    @orders = Order.all
  end
end

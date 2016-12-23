class DashboardController < ApplicationController
  #before_action :check_meta, if: :user_signed_in?
  def index
    @start_time = Time.now
    @end_time = 7.days.since(@start_time)
    @orders = Order.where('order_date >= ? and order_date < ?', @start_time, @end_time)
  end

  def meta
  end

  def home
  end
end

class Order < ApplicationRecord

  belongs_to :customer
  belongs_to :item

  def day_order
    if !order_date.nil?
    order_date.strftime('%a')
    end
  end

  def date_format
    if !order_date.nil?
    order_date.strftime('%d/%m/%Y at %I:%M:%S %p')
    end
  end

  def week
    self.order_date.strftime('%w')
  end
end

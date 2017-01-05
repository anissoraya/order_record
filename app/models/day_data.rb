class DayData < ApplicationRecord
  has_many :order_templates
  has_many :orders
end

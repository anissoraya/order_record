class Item < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :order_templates, dependent: :destroy
end

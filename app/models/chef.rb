class Chef < ApplicationRecord
  has_one :user, as: :meta, dependent: :destroy
  has_many :chef_orders, dependent: :destroy
end

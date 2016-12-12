class Chef < ApplicationRecord
  has_many :orders, dependent: :destroy
end

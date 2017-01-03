class OrderTemplate < ApplicationRecord
  belongs_to :customer
  belongs_to :runner
  belongs_to :chef
  belongs_to :day_data
end

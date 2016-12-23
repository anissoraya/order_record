class ChefOrder < ApplicationRecord
  belongs_to :chef
  belongs_to :order
end

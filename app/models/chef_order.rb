class ChefOrder < ApplicationRecord
  belongs_to :order
  belongs_to :chef
end

class ChefOrder < ApplicationRecord
  belongs_to :order
  belongs_to :chef

  validate :check_exceed, on: :create

  #def check_quantity
  #    if self.amount_cook > order.quantity
  #      errors.add(:amount_cook,"Do not exceed the quantity")
  #    end
  #end

  def check_exceed
    @totala = 0
    order.chef_orders.each do |total|
      @totala = @totala + total.amount_cook
    end

    if @totala > order.quantity
      self.errors.add(:amount_cook,"exceed the order quantity")
    end
  end
end

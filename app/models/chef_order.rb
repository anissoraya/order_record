class ChefOrder < ApplicationRecord
  belongs_to :order
  belongs_to :chef

  validate :check_exceed, on: :create
  validate :check_exceed_2, on: :update

  def check_exceed_2
    @totala = 0
    order.chef_orders.each do |total|
      @totala = @totala + total.amount_cook
      if total.id == id
        @totala = @totala - total.amount_cook
      end
    end

    if (@totala + self.amount_cook)  > order.quantity
      self.errors.add(:amount_cook,"exceed the order quantity")
    end
  end
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

class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy

  def self.search_cus(search)
    where('customers.name LIKE ? OR customers.company LIKE ?', "%#{search}%","%#{search}%" )
  end
end

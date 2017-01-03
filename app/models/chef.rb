class Chef < ApplicationRecord
  has_many :chef_orders, dependent: :destroy
  has_many :order_templates, dependent: :destroy

  def self.search_chef(search_chef)
    where('name LIKE ?', "%#{search_chef}%" )
  end


end

class Chef < ApplicationRecord
  has_many :orders, dependent: :destroy
  def self.search_chef(search_chef)
    where('name LIKE ?', "%#{search_chef}%" )
  end
end

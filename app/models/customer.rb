class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def self.search_cus(search_cus)
    where('name LIKE ? OR company LIKE ?', "%#{search_cus}%","%#{search_cus}%" )
  end

  has_many :order_templates
end

class Order < ApplicationRecord

  belongs_to :customer
  belongs_to :runner
  belongs_to :item
  has_many :runner_tasks
  has_many :chef_orders, dependent: :destroy
  belongs_to :chef

  def day_order
    if !order_date.nil?
    order_date.strftime('%a')
    end
  end

  def date_format
    if !order_date.nil?
    order_date.strftime('%d/%m/%Y at %H:%M')
    end
  end

  def week
    self.order_date.strftime('%w')
  end

  def self.search(search)
    if search
      includes(:customer).where('customers.name LIKE ? OR customers.company LIKE ?', "%#{search}%","%#{search}%" ).references(:customer)
    else
      all.order('order_date DESC').paginate(:page => params[:page], :per_page => 10)
    end
  end

end

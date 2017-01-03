class Runner < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :runner_tasks
  has_many :runner_orders, dependent: :destroy
  has_many :order_templates, dependent: :destroy

  def self.search_runner(search_runner)
    where('name LIKE ?', "%#{search_runner}%" )
  end
end

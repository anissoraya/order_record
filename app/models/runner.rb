class Runner < ApplicationRecord
  has_many :runner_tasks
  has_many :runner_orders, dependent: :destroy
end

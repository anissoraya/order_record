class Runner < ApplicationRecord
  has_one :user, as: :meta, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :runner_tasks, dependent: :destroy
end

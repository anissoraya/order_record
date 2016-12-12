class RunnerOrder < ApplicationRecord
  belongs_to :order
  belongs_to :runner
end

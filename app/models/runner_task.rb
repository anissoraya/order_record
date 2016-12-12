class RunnerTask < ApplicationRecord
  belongs_to :runner
  belongs_to :order
end

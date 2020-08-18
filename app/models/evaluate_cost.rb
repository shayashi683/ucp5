class EvaluateCost < ApplicationRecord
    belongs_to :assessment, optional: true
end

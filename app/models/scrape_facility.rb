class ScrapeFacility < ApplicationRecord
    belongs_to :evaluate_facility, optional: true
end

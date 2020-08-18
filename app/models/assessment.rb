class Assessment < ApplicationRecord
    belongs_to :ranking, optional: true
    has_one :evaluate_edu
    has_one :evaluate_cost
    has_one :evaluate_staff
    has_one :evaluate_facility
    has_one :evaluate_international
    has_one :evaluate_life
    has_one :evaluate_review
end

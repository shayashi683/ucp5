class ElementsEdu < ApplicationRecord
    belongs_to :evaluate_edu, optional: true
    belongs_to :evaluate_staff, optional: true
    belongs_to :evaluate_life, optional: true
end

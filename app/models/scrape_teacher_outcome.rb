class ScrapeTeacherOutcome < ApplicationRecord
    belongs_to :evaluate_staff, optional: true
end

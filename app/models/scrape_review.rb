class ScrapeReview < ApplicationRecord
    belongs_to :evaluate_review, optional: true
end

class EvaluateReview < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_review

    def self.update_all_total_repu
        all.each do |evaluate_review|
            evaluate_review.update(total_repu: evaluate_review.scrape_review.scrape_repu_review)
        end
    end

end

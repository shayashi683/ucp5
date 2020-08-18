class EvaluateInternational < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_the

    def self.update_all_facility_repu
        all.each do |evaluate_international|
            evaluate_international.update(the_assess: evaluate_international.scrape_the.scrape_the)
        end
    end
    
end

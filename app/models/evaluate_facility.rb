class EvaluateFacility < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_facility

    def self.update_all_facility_repu
        all.each do |evaluate_facility|
            evaluate_facility.update(facility_repu: evaluate_facility.scrape_facility.scrape_repu_facility)
        end
    end

end

class StaffEach < ApplicationRecord
    belongs_to :evaluate_staff, optional: true
    has_one :scrape_staff

end

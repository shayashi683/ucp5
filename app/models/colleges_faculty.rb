class CollegesFaculty < ApplicationRecord
    # belongs_to :category
    belongs_to :college
    belongs_to :faculty
    has_one :ranking
end

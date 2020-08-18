class EvaluateLife < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_life
    has_one :scrape_life
    has_one :elements_edu

    def self.update_all_region_diversity
        all.each do |evaluate_life|
            evaluate_life.update(region_diversity: evaluate_life.calc_region_diversity)
        end
     end
    def calc_region_diversity
       100 - (100 * elements_life.the_region_student_n/elements_edu.faculty_student_n)
    end

    def self.update_all_gender_diversity
        all.each do |evaluate_life|
            evaluate_life.update(gender_diversity: evaluate_life.calc_gender_diversity)
        end
     end
    def calc_gender_diversity
       100 - (100 * elements_life.female_student_n/elements_edu.faculty_student_n)
    end

    def self.update_all_life_repu
        all.each do |evaluate_life|
            evaluate_life.update(life_repu: evaluate_life.scrape_life.scrape_repu_life)
        end
    end

end

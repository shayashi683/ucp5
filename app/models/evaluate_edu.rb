class EvaluateEdu < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_edu

    def self.update_all_ratio_st
        all.each do |evaluate_edu|
            evaluate_edu.update(ratio_st: evaluate_edu.calc_ratio_st)
        end
     end
    def calc_ratio_st
        self.elements_edu.faculty_student_n / self.elements_edu.faculty_teacher_n.to_f
    end

    def self.update_all_competition_rate
        all.each do |evaluate_edu|
            evaluate_edu.update(competition_rate: evaluate_edu.calc_competition_rate)
        end
     end
    def calc_competition_rate
        self.elements_edu.apply_n / self.elements_edu.admin_n.to_f
    end

    def self.update_all_ratio_adm
        all.each do |evaluate_edu|
            evaluate_edu.update(ratio_adm: evaluate_edu.calc_ratio_adm)
        end
     end
    def calc_ratio_adm
        self.elements_edu.entry_n / self.elements_edu.admin_n.to_f
    end

    def self.update_all_susp_drop
        all.each do |evaluate_edu|
            evaluate_edu.update(susp_drop: evaluate_edu.calc_susp_drop)
        end
     end
    def calc_susp_drop
        self.elements_edu.college_delay_n / self.elements_edu.college_student_n.to_f
    end







    def self.update_all_education_grade
        all.each do |evaluate_edu|
            evaluate_edu.update(education_grade: evaluate_edu.calc_education_grade)
        end
     end
        def mean(array)
            array = array.sum/array.size
        end
        def standard_deviation(array)
            m = mean(array)
            variance = array.inject(0) { |variance, x| variance += (x - m) ** 2 } 
            standard_deviation = Math.sqrt(variance/(array.size)).round(4)
        end
        def zscore(array)
            stdev = standard_deviation(array)
            m = mean(array)
            zscore = array.map{ |v| ((v - m)/stdev).round(4)}
            p zscore
        end

    def calc_education_grade
        self.curriculum_points
     end

end

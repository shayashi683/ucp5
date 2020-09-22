class EvaluateStaff < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :staff_each
    has_one :elements_staff
    has_one :elements_edu

    def self.update_all_salary_staff
        all.each do |evaluate_staff|
            evaluate_staff.update(salary_staff: evaluate_staff.calc_salary_staff)
        end
     end
    def calc_salary_staff
        (self.elements_staff.teacher_expense + self.elements_staff.staff_expense)/ (self.elements_staff.college_teacher_n + self.elements_staff.college_staff_n)
    end

    def self.update_all_teachers_diversity
        all.each do |evaluate_staff|
            evaluate_staff.update(teachers_diversity: evaluate_staff.calc_teachers_diversity)
        end
     end
    def calc_teachers_diversity
        self.elements_staff.faculty_foreign_teacher_n * 100/ self.elements_edu.faculty_teacher_n
    end

    def self.update_all_teachers_gender
        all.each do |evaluate_staff|
            evaluate_staff.update(teachers_gender: evaluate_staff.calc_teachers_gender)
        end
     end
    def calc_teachers_gender
        self.elements_staff.faculty_female_teacher_n * 100/ self.elements_edu.faculty_teacher_n
    end

    def self.update_all_outcome_staff
        all.each do |evaluate_staff|
            evaluate_staff.update(outcome_staff: evaluate_staff.staff_each.rm_points)
        end
    end
 
end

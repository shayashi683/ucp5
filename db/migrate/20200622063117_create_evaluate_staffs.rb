class CreateEvaluateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_staffs do |t|
      t.references :colleges_faculty, foreign_key: true 
      t.numeric :repu_teacher
      t.numeric :salary_staff
      t.numeric :outcome_staff
      t.numeric :study_budget
      t.numeric :teachers_diversity
      t.numeric :teachers_gender
      t.numeric :staff_grade

      t.timestamps
    end
  end
end

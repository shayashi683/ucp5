class CreateEvaluateEdus < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_edus do |t|
      t.references :colleges_faculty, foreign_key: true
      t.numeric :curriculum_points
      t.numeric :relationwc
      t.numeric :ratio_st
      t.numeric :competition_rate
      t.numeric :ratio_adm
      t.numeric :susp_drop
      t.numeric :income
      t.numeric :qualification
      t.numeric :study_budget
      t.numeric :activity
      t.numeric :education_grade

      t.timestamps
    end
  end
end

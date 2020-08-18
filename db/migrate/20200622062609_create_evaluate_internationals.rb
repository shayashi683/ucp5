class CreateEvaluateInternationals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_internationals do |t|
      t.references :colleges_faculty, foreign_key: true
      t.integer :coop_schools
      t.integer :shortstudy_programs
      t.integer :faculty_partnerschool
      t.integer :exchangestudents
      t.integer :accepted_programs
      t.numeric :the_assess
      t.numeric :international_grade

      t.timestamps
    end
  end
end

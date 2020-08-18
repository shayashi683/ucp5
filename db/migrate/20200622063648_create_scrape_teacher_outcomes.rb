class CreateScrapeTeacherOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_teacher_outcomes do |t|
      t.references :evaluate_staff, foreign_key: true
      t.numeric :scrape_outcome_teacher

      t.timestamps
    end
  end
end

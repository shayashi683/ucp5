class CreateEvaluateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_reviews do |t|
      t.references :colleges_faculty, foreign_key: true
      t.numeric :total_repu
      t.numeric :review_grade

      t.timestamps
    end
  end
end

class CreateEvaluateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_lives do |t|
      t.references :colleges_faculty, foreign_key: true
      t.numeric :region_diversity
      t.numeric :gender_diversity
      t.integer :clubs
      t.numeric :life_repu
      t.numeric :life_grade

      t.timestamps
    end
  end
end

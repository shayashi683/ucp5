class CreateEvaluateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_costs do |t|
      t.references :colleges_faculty, foreign_key: true
      t.integer :tuition
      t.integer :employment_rate
      t.integer :scholarship
      t.numeric :cost_grade

      t.timestamps
    end
  end
end

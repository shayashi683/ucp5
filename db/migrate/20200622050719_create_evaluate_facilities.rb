class CreateEvaluateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_facilities do |t|
      t.references :colleges_faculty, foreign_key: true
      t.integer :facility_expenditure
      t.integer :institution_expenditure
      t.integer :own_books
      t.numeric :facility_repu
      t.numeric :facility_grade

      t.timestamps
    end
  end
end

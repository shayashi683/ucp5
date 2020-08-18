class CreateElementsLives < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_lives do |t|
      t.references :evaluate_life, foreign_key: true
      t.integer :the_region_student_n
      t.integer :female_student_n

      t.timestamps
    end
  end
end

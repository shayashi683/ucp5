class CreateElementsEdus < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_edus do |t|
      t.references :evaluate_edu, foreign_key: true
      t.references :evaluate_staff, foreign_key: true
      t.references :evaluate_life, foreign_key: true
      t.integer :faculty_student_n
      t.integer :faculty_teacher_n
      t.integer :apply_n
      t.integer :admin_n
      t.integer :entry_n
      t.integer :college_delay_n
      t.integer :college_student_n

      t.timestamps
    end
  end
end

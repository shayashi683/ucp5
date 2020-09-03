class CreateStaffEaches < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_eaches do |t|
      t.references :evaluate_staff, foreign_key: true
      t.text :staff_name
      t.numeric :rm_points

      t.timestamps
    end
  end
end

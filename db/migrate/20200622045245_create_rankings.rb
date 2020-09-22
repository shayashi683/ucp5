class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.references :colleges_faculty, foreign_key: true
      t.integer :established_year
      t.text :place
      t.numeric :total_grade
      t.numeric :center_point

      t.timestamps
    end
  end
end
class CreateCollegesFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges_faculties do |t|
      t.references :college, foreing_key: true
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end

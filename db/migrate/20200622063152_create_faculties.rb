class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.text :faculty_name

      t.timestamps
    end
  end
end

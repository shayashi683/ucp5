class CreateScrapeFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_facilities do |t|
      t.references :evaluate_facility, foreign_key: true
      t.numeric :scrape_repu_facility

      t.timestamps
    end
  end
end

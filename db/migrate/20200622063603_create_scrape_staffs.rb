class CreateScrapeStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_staffs do |t|
      t.references :evaluate_staff, foreign_key: true
      t.numeric :scrape_repu_teacher

      t.timestamps
    end
  end
end

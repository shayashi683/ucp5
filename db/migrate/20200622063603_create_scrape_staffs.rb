class CreateScrapeStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_staffs do |t|
      t.references :staff_each, foreign_key: true
      t.numeric :rm_awards
      t.numeric :rm_papers
      t.numeric :rm_misc
      t.numeric :rm_books

      t.timestamps
    end
  end
end

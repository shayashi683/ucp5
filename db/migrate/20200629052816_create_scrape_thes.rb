class CreateScrapeThes < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_thes do |t|
      t.references :evaluate_international, foreign_key: true
      t.numeric :scrape_the

      t.timestamps
    end
  end
end

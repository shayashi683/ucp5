class CreateScrapeReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_reviews do |t|
      t.references :evaluate_review, foreign_key: true 
      t.numeric :scrape_repu_review

      t.timestamps
    end
  end
end

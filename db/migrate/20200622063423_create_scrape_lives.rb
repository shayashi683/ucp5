class CreateScrapeLives < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_lives do |t|
      t.references :evaluate_life, foreign_key: true
      t.numeric :scrape_repu_life

      t.timestamps
    end
  end
end

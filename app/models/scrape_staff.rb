require 'mechanize'
class ScrapeStaff < ApplicationRecord
    belongs_to :staff_each, optional: true

  def self.update_all_scrape_outcome_teacher
    all.each do |scrape_teacher_outcome|
    scrape_teacher_outcome.update(scrape_outcome_teacher: scrape_teacher_outcome.researchmap_urls(total_points))
    end
  end

  def researchmap_urls(total_points)
    agent = Mechanize.new
    page = agent.get("https://researchmap.jp/read0170729/published_papers")
    agent.page.encoding = "eucJP-MS"
    elements = page.search('//*[@id="published_papers"]/span')
    papers = elements.inner_text
    p papers_points = papers.to_i * 1
    
    page = agent.get("https://researchmap.jp/read0170729/awards")
    agent.page.encoding = "eucJP-MS"
    elements = page.search('//*[@id="awards"]/span')
    awars = elements.inner_text
    p awars_points = awars.to_i * 4

    page = agent.get("https://researchmap.jp/read0170729/misc")
    agent.page.encoding = "eucJP-MS"
    elements = page.search('//*[@id="misc"]/span')
    misc = elements.inner_text
    p misc_points = misc.to_i * 0.5

    page = agent.get("https://researchmap.jp/read0170729/books_etc")
    agent.page.encoding = "eucJP-MS"
    elements = page.search('//*[@id="books_etc"]/span')
    books_etc = elements.inner_text
    p books_etc_points = books_etc.to_i * 2

    p total_points = papers_points + awars_points + misc_points + books_etc_points
  end
end

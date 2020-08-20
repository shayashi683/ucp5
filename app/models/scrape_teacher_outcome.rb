require 'mechanize'

class ScrapeTeacherOutcome < ApplicationRecord
    belongs_to :evaluate_staff, optional: true
     def self.fuga_urls
        agent = Mechanize.new
        # 変数定義
        domain = "https://researchmap.jp"
        default_page = 1
        page_count = 20
        next_url = "/read0170729/published_papers?limit=20&offset=#{default_page}"
        next_link = ""
        pre_next_link = ""
        active_flag = 1
        page_num = 1
        sum = 0
        array = []
        while active_flag == 1 do
        current_page = agent.get(domain + next_url)
        # activeクラスがあったらフラグを立てる
        active_flag = 0
        # li内のリンクを全て取得する
        elements = current_page.search('.pagination li')
        elements.each_with_index do |element, i|
            # もしactiveフラグがオンだったらリンクを取得する(activeクラスを持った次のliは次へのリンクなはず)
            if active_flag == 1
                next_link = element.at("a")["href"]
                break
            end
            # liにactiveクラスがついていたらフラグを立てる
            if element.first.present? && element.first[1] == "active"
                active_flag = 1
            # 前回のループと同じリンクだった場合、while文を抜けるためにactive_flagをオフにする
            if i != 0 && pre_next_link == next_link
                active_flag = 0
            else

                next_links = domain + next_link
                p next_links
                # ここに対象のページでやりたい処理を書いていく
                    # next_links.each do |link|
                    #     get_book(link)
                    # end
                # sum = sum + elements.count
            end
            pre_next_link = next_link
            end
        end
        default_page = default_page + page_count
        next_url = "/read0170729/published_papers?limit=20&offset=#{default_page}"
        # next_links = domain + next_link
        page_num = page_num + 1
            end
        # p data1 = array.push(sum)
        # p next_links
        end

        # def self.get_book(link)
        #     agent = Mechanize.new
        #     page = agent.get(link)

        #     book.data1 = page.search('.rm-cv-list-content a').inner_text
        #     book.save
        # end
end

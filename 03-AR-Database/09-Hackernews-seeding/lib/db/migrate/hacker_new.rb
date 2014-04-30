require "seed"

class HackerNew < Scraper

  def initialize
    url = "http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}"
    super(url)
  end
end

posts_scraper = HackerNew.new('haricots')

p posts_scraper


posts_scraper.doc.search('.m_search_result').each do |element|
    puts "#{element.search('.m_search_titre_recette > a').inner_text}"
    puts "Rating : #{element.search('.etoile1').size} / 5}"
end
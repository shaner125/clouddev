require "medlife_data/version"

module MedlifeData
    
  def news(url)
  require 'rss'
  require 'open-uri'
  rss_results = []
  rss = RSS::Parser.parse(open(url).read, false).items[0..5]
  
  rss.each do |result|
    result = { title: result.title, date: result.pubDate, link: result.link, description: result.description }
    rss_results.push(result)
  end
    return rss_results
  end
end

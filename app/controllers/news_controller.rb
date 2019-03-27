class NewsController < ApplicationController

    def index
        @news = MedlifeData.news('http://feeds.feedburner.com/CoinDesk?format=xml%27%29.read')
    end
    

end

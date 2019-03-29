class NewsController < ApplicationController

    def index
        @news = Medigem.news('https://rss.medicalnewstoday.com/aid-disasters.xml')+Medigem.news('https://rss.medicalnewstoday.com/anxiety.xml')+Medigem.news('https://rss.medicalnewstoday.com/alzheimers.xml')+Medigem.news('https://rss.medicalnewstoday.com/autism.xml')+Medigem.news('https://rss.medicalnewstoday.com/clinicaltrials.xml')+Medigem.news('https://rss.medicalnewstoday.com/genetics.xml')+Medigem.news('https://rss.medicalnewstoday.com/mrsa-superbug.xml')+Medigem.news('https://rss.medicalnewstoday.com/pharma_industry.xml')+Medigem.news('https://rss.medicalnewstoday.com/smoking.xml')+Medigem.news('https://rss.medicalnewstoday.com/urinary-tract-infection.xml')
        @newsrelease = @news.shuffle
    end
    

end

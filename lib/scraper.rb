class Scraper

    def self.display_bio
        html = open("http://www.fistful-of-leone.com/")
        doc = Nokogiri::HTML(html)
        bio_array = doc.css('div#content2 p').text.strip.gsub("\n", " ").split(".")
        short_bio = Linesetter.format(bio_array[0..4].join(". ") << ".")
        puts short_bio
    end 

end 
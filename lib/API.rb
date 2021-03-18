class API

    def self.load_film_urls(film_urls)
        film_urls.each do | url | 
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = ENV['API_KEY']
            request["x-rapidapi-host"] = 'imdb-internet-movie-database-unofficial.p.rapidapi.com'

            response = http.request(request)
            body = response.read_body
            ind_film_hash = JSON.parse(body, symbolize_names: true)
            Films.new(ind_film_hash)
        end
    end

end  

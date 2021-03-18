class Films

    attr_accessor :title, :year, :duration, :plot, :id, :cast
    
    @@all = []


    def initialize(ind_film_hash)
        @title = ind_film_hash[:title]
        @year = ind_film_hash[:year]
        @duration = ind_film_hash[:length]
        @plot = ind_film_hash[:plot]
        @id = ind_film_hash[:id]
        @cast = ind_film_hash[:cast]
        @@all << self 
    end

    def self.all
        @@all
    end 

    def self.display_film_titles
        self.all.each.with_index(1) { | film, index | puts "        #{index}. #{film.title}" }
    end

    def self.display_film_data(index)
        film = self.all[index]
        puts "  #{film.title}"
        puts ""
        puts "  Released --- #{film.year}"
        puts ""
        puts "  Length --- #{film.duration}"
        puts ""
        puts "  Plot --- #{film.plot}"
        puts ""
        puts "  Cast"
        film.cast.each do | cast_member |
            puts "      #{cast_member[:actor]} as '#{cast_member[:character]}'"
        end 
        puts ""
        puts "  For a deeper dive into this film's details, vist 'http//www.imdb.com' and copy-paste '#{film.id}' into the search bar."
        puts ""
        puts "  Would you like to view more of Leone's films? [y/n] "
        puts ""
    end

    def self.empty_films_array
        @@all.clear
    end


end 
class CLI

    def display_project_main_menu

        puts ''
        puts ''
        puts ''
        puts ''
        puts '  _______  _______  _______  _______ _________ _______     _        _______  _______  _        _______'
        puts '  (  ____ \(  ____ \(  ____ )(  ____ \\__   __/ (  ___  )  ( \      (  ____ \(  ___  )( (    /|(  ____ |'
        puts '  | (    \/| (    \/| (    )|| (    \/   ) (   | (   ) |  | (      | (    \/| (   ) ||  \  ( || (    \/'
        puts '  | (_____ | (__    | (____)|| |         | |   | |   | |  | |      | (__    | |   | ||   \ | || (__    '
        puts '  (_____  )|  __)   |     __)| | ____    | |   | |   | |  | |      |  __)   | |   | || (\ \) ||  __)   '
        puts '        ) || (      | (\ (   | | \_  )   | |   | |   | |  | |      | (      | |   | || | \   || (      '
        puts '  /\____) || (____/\| ) \ \__| (___) |___) (___| (___) |  | (____/\| (____/\| (___) || )  \  || (____/|'
        puts '  _____________________________________________________________________________________________________'
        puts '                                                                                                        '
        puts ""
        puts "Hello! Welcome to Sergio Leone's Spaghetti Western Database."
        puts ""
    end

    def leone_bio
        puts ""
        Scraper.display_bio
        puts ""
        puts ""
    end
    
    def list_of_films 
        puts "  Leone's Spaghetti Westerns"
        puts "   ________________________ "
        puts ""
        puts ""
        Films.display_film_titles
        puts ""
        puts ""
        puts "  Please enter a number to explore details about each film."
        puts ""
    end

    def get_input
        input = gets.chomp
        puts ""
        puts '                                                  ,*-.'
        puts '                                                  |  |'
        puts '                                               ,. |  |'
        puts '                                              | |_|  | ,.'
        puts '                                              `---.  |_| |'
        puts '                                                  |  .--`'
        puts '                                                  |  |       '
        puts '                                                  |  |      '
        puts '  _____________________________________________________________________________________________________'
        puts ''
        puts ''
        if input.count("a-zA-Z") > 0 
            list_of_films
            get_input
        elsif input.to_i < 1 || input.to_i > 5
            list_of_films
            get_input
        else 
            index = input.to_i-1
            Films.display_film_data(index)
        end
    end

    def final_input
        input = gets.chomp
        if input.downcase == "y"
            Films.empty_films_array
            run
        elsif input.downcase == "n"
            puts ""
            puts ""
            puts "  Thanks for visiting, partner. See you down the trail..."
            puts ""
            puts ""
            puts '                                                  ,*-.'
            puts '                                                  |  |'
            puts '                                               ,. |  |'
            puts '                                              | |_|  | ,.'
            puts '                                              `---.  |_| |'
            puts '                                                  |  .--`'
            puts '                                                  |  |       '
            puts '                                                  |  |      '
            puts '  _____________________________________________________________________________________________________'
            puts ''
            puts ''
            puts ''
        elsif input.to_i == 0
            puts ""
            puts ""
            puts "  What's that now, partner? If you're gonna just bang on the keys like a loon, I suppose you can leave! GO ON, GET!"
            puts ""
            puts ""
        end



    end 
 


    
    FILM_URLS = [ URI("https://imdb-internet-movie-database-unofficial.p.rapidapi.com/film/a%20fistfull%20of%20dollars"), 
    URI("https://imdb-internet-movie-database-unofficial.p.rapidapi.com/film/for%20a%20few%20dollars%20more"),
    URI("https://imdb-internet-movie-database-unofficial.p.rapidapi.com/film/the%20good,%20the%20bad%20and%20the%20ugly"),
    URI("https://imdb-internet-movie-database-unofficial.p.rapidapi.com/film/once%20upon%20a%20time%20in%20the%20west"),
    URI("https://imdb-internet-movie-database-unofficial.p.rapidapi.com/film/duck%20you%20sucker") ] 

    def run
        API.load_film_urls(FILM_URLS)
        display_project_main_menu
        leone_bio
        list_of_films
        get_input
        final_input
    end



end 




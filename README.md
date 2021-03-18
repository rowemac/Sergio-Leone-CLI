# Sergio Leone's Western Database

## Description

In this CLI program, information about the "Spaghetti Western" films of auteur director Sergio Leone can be explored through the use of a movie database API and a web scrape from a fan's website. 

## Install Instructions

- Since this project utilizes several Ruby gems, type `bundle install` in your terminal, then hit `enter` to run the installation.

- Once installation is complete, type `ruby ./bin/leones_western_database` and hit `enter` in your terminal to run the program.

## How it Works

Once the executable file `./bin/leones_western_database` is run in your terminal, the program will output a list of films with which you can interact.

```
 Leone's Spaghetti Westerns
   ________________________ 


        1. A Fistful of Dollars 
        2. For a Few Dollars More 
        3. The Good, the Bad and the Ugly 
        4. Once Upon a Time in the West 
        5. Duck, You Sucker 


  Please enter a number to explore details about each film.
```

From here, the user can input a number from this list that corresponds to the film they wish to learn more about.

For example, if the user presses the `1` key, the program will return:

```
A Fistful of Dollars 

  Released --- 1964

  Length --- 1h 39min

  Plot --- A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.

  Cast
      Clint Eastwood as 'Joe'
      Marianne Koch as 'Marisol'
      Gian Maria Volontè as 'Ramón Rojo'
      Wolfgang Lukschy as 'John Baxter'
      Sieghardt Rupp as 'Esteban Rojo'
      Joseph Egger as 'Piripero'
      Antonio Prieto as 'Don Benito Rojo'
      José Calvo as 'Silvanito'
      Margarita Lozano as 'Consuelo Baxter'
      Daniel Martín as 'Julián'
      Benito Stefanelli as 'Rubio'
      Mario Brega as 'Chico'
      Bruno Carotenuto as 'Antonio Baxter (as Carol Brown)'
      Aldo Sambrell as 'Rojo gang member (as Aldo Sambreli)'

  For a deeper dive into this film's details, vist 'http//www.imdb.com' and copy-paste 'tt0058461' into the search bar.

  Would you like to view more of Leone's films? [y/n]
```

If the user chooses `y` at this point, they will return to the list of films to view more, or if the user wishes, typing the `n` key will exit the program.

## Contributer's Guide

If you wish to contribute to this program, please submit a pull request or a new issue. 

## License Link

This program is licensed under The MIT License (https://opensource.org/licenses/MIT).

## Sources

ASCII Artwork

- https://www.asciiart.eu/plants/cactus

- https://ascii.co.uk/text

API

- https://rapidapi.com/hmerritt/api/imdb-internet-movie-database-unofficial?endpoint=apiendpoint_712d7dac-5b49-489c-888b-04c774a2964c


# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Movie.destroy_all
Role.destroy_all
Person.destroy_all

# Generate models and tables, according to the domain model


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
values = {name: "Chistopher Nolan"}

christopher_nolan = Person.new(values)
christopher_nolan.save

values = {name: "Christian Bale"}

christian_bale = Person.new(values)
christian_bale.save

values = {name: "Michael Caine"}

michael_caine = Person.new(values)
michael_caine.save

values = {name: "Liam Neeson"}

liam_neeson = Person.new(values)
liam_neeson.save

values = {name: "Katie Holmes"}

katie_holmes = Person.new(values)
katie_holmes.save

values = {name: "Gary Oldman"}

gary_oldman = Person.new(values)
gary_oldman.save

values = {name: "Heath Ledger"}

heath_ledger = Person.new(values)
heath_ledger.save

values = {name: "Aaron Eckhart"}

aaron_eckhart = Person.new(values)
aaron_eckhart.save

values = {name: "Maggie Gyllenhaal"}

maggie_gyllenhaal = Person.new(values)
maggie_gyllenhaal.save

values = {name: "Tom Hardy"}

tom_hardy = Person.new(values)
tom_hardy.save

values = {name: "Joseph Gordon-Levitt"}

joseph_gordon_levitt = Person.new(values)
joseph_gordon_levitt.save

values = {name: "Anne Hathaway"}

anne_hathaway = Person.new(values)
anne_hathaway.save

values = {title: "Batman Begins",
          year_released: "2005",
          rated: "PG-13",
          person_id: christopher_nolan.id}

batman_begins = Movie.new(values)
batman_begins.save

values = {title: "The Dark Knight",
          year_released: "2008",
          rated: "PG-13",
          person_id: christopher_nolan.id}

dark_knight = Movie.new(values)
dark_knight.save

values = {title: "The Dark Knight Rises",
          year_released: "2012",
          rated: "PG-13",
          person_id: christopher_nolan.id}

dark_knight_rises = Movie.new(values)
dark_knight_rises.save

values = {movie_id: batman_begins.id,
          person_id: christian_bale.id,
          character_name: "Bruce Wayne"}

bruce_wayne1 = Role.new(values)
bruce_wayne1.save

values = {movie_id: batman_begins.id,
          person_id: michael_caine.id,
          character_name: "Alfred"}

alfred1 = Role.new(values)
alfred1.save

values = {movie_id: batman_begins.id,
          person_id: liam_neeson.id,
          character_name: "Ra's Al Ghul"}

ras_al_ghul1 = Role.new(values)
ras_al_ghul1.save

values = {movie_id: batman_begins.id,
          person_id: katie_holmes.id,
          character_name: "Rachel Dawes"}

rachel_dawes1 = Role.new(values)
rachel_dawes1.save

values = {movie_id: batman_begins.id,
          person_id: gary_oldman.id,
          character_name: "Commissioner Gordon"}

commissioner_gordon1 = Role.new(values)
commissioner_gordon1.save

values = {movie_id: dark_knight.id,
          person_id: christian_bale.id,
          character_name: "Bruce Wayne"}

bruce_wayne2 = Role.new(values)
bruce_wayne2.save

values = {movie_id: dark_knight.id,
          person_id: heath_ledger.id,
          character_name: "Joker"}

joker1 = Role.new(values)
joker1.save

values = {movie_id: dark_knight.id,
          person_id: aaron_eckhart.id,
          character_name: "Harvey Dent"}

harvey_dent1 = Role.new(values)
harvey_dent1.save

values = {movie_id: dark_knight.id,
          person_id: michael_caine.id,
          character_name: "Alfred"}

alfred2 = Role.new(values)
alfred2.save

values = {movie_id: dark_knight.id,
          person_id: maggie_gyllenhaal.id,
          character_name: "Rachel Dawes"}

rachel_dawes2 = Role.new(values)
rachel_dawes2.save

values = {movie_id: dark_knight_rises.id,
          person_id: christian_bale.id,
          character_name: "Bruce Wayne"}

bruce_wayne3 = Role.new(values)
bruce_wayne3.save

values = {movie_id: dark_knight_rises.id,
          person_id: gary_oldman.id,
          character_name: "Commissioner Gordon"}

commissioner_gordon2 = Role.new(values)
commissioner_gordon2.save

values = {movie_id: dark_knight_rises.id,
          person_id: tom_hardy.id,
          character_name: "Bane"}

bane1 = Role.new(values)
bane1.save

values = {movie_id: dark_knight_rises.id,
          person_id: joseph_gordon_levitt.id,
          character_name: "John Blake"}

john_blake1 = Role.new(values)
john_blake1.save

values = {movie_id: dark_knight_rises.id,
          person_id: anne_hathaway.id,
          character_name: "Selina Kyle"}

selina_kyle1 = Role.new(values)
selina_kyle1.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
movies = Movie.all
for movie in movies
    person = movie.person
    puts "#{movie.title} #{movie.year_released} #{movie.rated} #{person.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# roles = Role.all
# for role in roles
#     person = role.person
#     movies = role.movies
#     puts "#{movie.title} #{person.name} #{role.character_name}"
# end

batman_begins_cast = Movie.where({title: "Batman Begins"})[0]
for role in batman_begins_cast.roles
    person = role.person
    puts "Batman Begins #{person.name} #{role.character_name}"
end

dark_knight_cast = Movie.where({title: "The Dark Knight"})[0]
for role in dark_knight_cast.roles
    person = role.person
    puts "The Dark Knight #{person.name} #{role.character_name}"
end

dark_knight_rises_cast = Movie.where({title: "The Dark Knight Rises"})[0]
for role in dark_knight_rises_cast.roles
    person = role.person
    puts "The Dark Knight Rises #{person.name} #{role.character_name}"
end
-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy.
-- - Movie data includes the movie title, year released, MPAA rating,
--   and studio.
-- - There are many studios, and each studio produces many movies, but
--   a movie belongs to a single studio.
-- - An actor can be in multiple movies.
-- - Everything you need to do in this assignment is marked with TODO!

-- User stories
--
-- - As a guest, I want to see a list of movies with the title, year released,
--   MPAA rating, and studio information.
-- - As a guest, I want to see the movies which a single studio has produced.
-- - As a guest, I want to see each movie's cast including each actor's
--   name and the name of the character they portray.
-- - As a guest, I want to see the movies which a single actor has acted in.
-- * Note: The "guest" user role represents the experience prior to logging-in
--   to an app and typically does not have a corresponding database table.


-- Deliverables
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
-- - Insertion of "Batman" sample data into tables.
-- - Selection of data, so that something similar to the sample "report"
--   below can be achieved.

-- Rubric
--
-- 1. Domain model - 6 points
-- - Think about how the domain model needs to reflect the
--   "real world" entities and the relationships with each other. 
--   Hint #1: It's not just a single table that contains everything in the 
--   expected output. There are multiple real world entities and
--   relationships including at least one many-to-many relationship.
--   Hint #2: Do NOT name one of your models/tables “cast” or “casts”; this 
--   is a reserved word in sqlite and will break your database! Instead, 
--   think of a better word to describe this concept; i.e. the relationship 
--   between an actor and the movie in which they play a part.
-- 2. Execution of the domain model (CREATE TABLE) - 4 points
-- - Follow best practices for table and column names
-- - Use correct data column types (i.e. TEXT/INTEGER)
-- - Use of the `model_id` naming convention for foreign key columns
-- 3. Insertion of data (INSERT statements) - 4 points
-- - Insert data into all the tables you've created
-- - It actually works, i.e. proper INSERT syntax
-- 4. "The report" (SELECT statements) - 6 points
-- - Write 2 `SELECT` statements to produce something similar to the
--   sample output below - 1 for movies and 1 for cast. You will need
--   to read data from multiple tables in each `SELECT` statement.
--   Formatting does not matter.

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Warner Bros.
-- The Dark Knight        2008           PG-13  Warner Bros.
-- The Dark Knight Rises  2012           PG-13  Warner Bros.

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!


-- The SQL statement for the movies output
-- TODO!

-- The SQL statement for the cast output
-- TODO!
drop table movies;
drop table actors;
drop table figures;
drop table studios;

-- Create tables first
create table studios (
    studio_id integer primary key autoincrement,
    studio_name text
);
create table movies (
    movie_id integer primary key autoincrement,
    title text,
    year_released text,
    rating text,
    studio_id integer,
    foreign key (studio_id) references studios(studio_id)
    );
create table figures (
    figure_id integer primary key autoincrement,
    figure text,
    movie_id integer,
    foreign key (movie_id) references movies(movie_id)
    );
create table actors (
    actor_id integer primary key autoincrement,
    actor text,
    figure_id integer,
   foreign key (figure_id) references figures(figure_id)
   );

-- Start filling tables for part 1
insert into studios (
    studio_name)
    values (
        "Warner Bros."
    );
insert into movies (
    title,
    year_released,
    rating,
    studio_id)
values (
    "Batman Begins",
    "2005",
    "PG-13",
    1
    );
    insert into movies (
    title,
    year_released,
    rating,
    studio_id)
values (
    "The Dark Knight",
    "2008",
    "PG-13",
    1
    );
 insert into movies (
    title,
    year_released,
    rating,
    studio_id)
values (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    1
);


-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- Inner join to print desired output for Movies
select movies.title, movies.year_released, movies.rating, studios.studio_name
from movies
inner join studios
on movies.studio_id = studios.studio_id;

-- Start filling tables for part 2
create table movie_characters (
    movie_id integer,
    actor_id integer,
    figure_id integer,
    foreign key (movie_id) references movies(movie_id),
    foreign key (actor_id) references actors(actor_id),
    foreign key (figure_id) references figures(figure_id)

insert into figures (
    figure,
    movie_id
)
    values (
        "Bruce Wayne",
        1
    );
    insert into figures (
    figure,
    movie_id
)
    values (
        "Bruce Wayne",
        2
    );
    insert into figures (
    figure,
    movie_id
)
    values (
        "Bruce Wayne",
        3
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "Alfred",
        1
    );
     insert into figures (
    figure,
    movie_id)
    values (
        "Alfred",
        2
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "Ra's Al Ghul",
        1
    );
     insert into figures (
    figure,
    movie_id)
    values (
        "Rachel Dawes",
        1
    );
     movie_id)
    values (
        "Rachel Dawes",
        2
    );
 insert into figures (
    figure,
    movie_id)
    values (
        "Commissioner Gordon",
        1
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "Commissioner Gordon",
        3
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "Joker",
        2
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "Harvey Dent",
        2
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "Bane",
        3
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "John Blake",
        3
    );
    insert into figures (
    figure,
    movie_id)
    values (
        "Selina Kyle",
        3
    );
-- Insert values into actors
insert into actors (
    actor,
    figure_id)
    values (
        "Christian Bale",
        1
    );
    insert into actors (
    actor,
    figure_id)
    values (
        "Michael Caine",
        2
    );
    insert into actors (
    actor,
    figure_id)
    values (
        "Liam Neeson",
        3
    );
    insert into actors (
    actor,
    figure_id)
    values (
        "Katie Holmes",
        4
    );
     insert into actors (
    actor,
    figure_id)
    values (
        "Gary Oldman",
        5
    );
     insert into actors (
    actor,
    figure_id)
    values (
        "Heath Ledger",
        6
    );
     insert into actors (
    actor,
    figure_id)
    values (
        "Aaron Eckhart",
        7
    );
     insert into actors (
    actor,
    figure_id)
    values (
        "Maggie Gyllenhaal",
        4
    );
      insert into actors (
    actor,
    figure_id)
    values (
        "Tom Hardy",
        8
    );
      insert into actors (
    actor,
    figure_id)
    values (
        "Joseph Gordon-Levitt",
        9
    );
      insert into actors (
    actor,
    figure_id)
    values (
        "Anne Hathaway",
        10
    );
insert into movie_characters
movie_id, 
actor_id,
character_id)
values
(1,
1,
1)
select * from movies;
select * from actors;
select * from figures;
select * from studios;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


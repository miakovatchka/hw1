# ENTR-451 Homework Assignment #1

In this assignment, you'll be building the domain model, database structure, and data for "KMDB" (the Kellogg Movie Database). The end product will be a report that prints the movies and the top-billed cast for each movie in the database.

### Getting Started

- Use this template to create a new GitHub repository (click *Use this template* at the top of this page); be sure that the new repository in your account is named `hw1`
- Open the new repository (the one in your GitHub account – it should be called `_Your GitHub Username_/hw1`) in Gitpod. 
- Create a new SQLite database by typing `sqlite3 kmdb.sqlite3`
- Complete the assignment per the detailed instructions found in the comments of `kmdb.sql`, executing the script by using the `.read kmdb.sql` command.
- Commit and sync often! When complete, ensure that your most up-to-date, finished work lives in your GitHub repository, then, submit the URL to your GitHub repository page – i.e. `https://github.com/_Your GitHub Username_/hw1`
--Excess code
-- Insert values into characters table referencing movies

insert into characters (
    name_character,
    movie_id
)
    values (
        "Bruce Wayne",
        1
    );
    insert into characters (
    name_character,
    movie_id
)
    values (
        "Bruce Wayne",
        2
    );
    insert into characters (
    name_character,
    movie_id
)
    values (
        "Bruce Wayne",
        3
    );
    insert into characters (
    name_character,
    movie_id)
    values (
        "Alfred",
        1
    );
     insert into characters (
    name_character,
    movie_id)
    values (
        "Alfred",
        2
    );
     insert into characters (
    name_character,
    movie_id)
    values (
        "Ra's Al Ghul",
        1
    );
     insert into characters (
    name_character,
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
 insert into characters (
    name_character,
    movie_id)
    values (
        "Commissioner Gordon",
        1
    );
    insert into characters (
    name_character,
    movie_id)
    values (
        "Commissioner Gordon",
        3
    );
    insert into characters (
    name_character,
    movie_id)
    values (
        "Joker",
        2
    );
    insert into characters (
    name_character,
    movie_id)
    values (
        "Harvey Dent",
        2
    );
    insert into characters (
    name_character,
    movie_id)
    values (
        "Bane",
        3
    );
    insert into characters (
    name_character,
    movie_id)
    values (
        "John Blake",
        3
    );
    insert into characters (
    name_character,
    movie_id)
    values (
        "Selina Kyle",
        3
    );
-- Insert values into actors
insert into actors (
    real_name,
    character_id)
    values (
        "Christian Bale",
        1
    );
    insert into actors (
    real_name,
    character_id)
    values (
        "Michael Caine",
        2
    );
    insert into actors (
    real_name,
    character_id)
    values (
        "Liam Neeson",
        3
    );
    insert into actors (
    real_name,
    character_id)
    values (
        "Katie Holmes",
        4
    );
     insert into actors (
    real_name,
    character_id)
    values (
        "Gary Oldman",
        5
    );
     insert into actors (
    real_name,
    character_id)
    values (
        "Heath Ledger",
        6
    );
     insert into actors (
    real_name,
    character_id)
    values (
        "Aaron Eckhart",
        7
    );
     insert into actors (
    real_name,
    character_id)
    values (
        "Maggie Gyllenhaal",
        4
    );
      insert into actors (
    real_name,
    character_id)
    values (
        "Tom Hardy",
        8
    );
      insert into actors (
    real_name,
    character_id)
    values (
        "Joseph Gordon-Levitt",
        9
    );
      insert into actors (
    real_name,
    character_id)
    values (
        "Anne Hathaway",
        10
    );
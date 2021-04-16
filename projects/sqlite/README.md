# SQLite

## Prelim

The container should be set up already.
The database file is included for you in the repository.
To work with it:

```txt
[root@5395d7c0016e /src] sqlite3 chinook.db
SQLite version 3.31.1 2020-01-27 19:55:54
Enter ".help" for usage hints.
sqlite> .tables
albums          employees       invoices        playlists
artists         genres          media_types     tracks
customers       invoice_items   playlist_track
sqlite> 
```

> Why are we not using MySQL?

Well, it's tricky to set up with docker, and sqlite is so similar to mysql that you'll still get the same idea.

### Manual Setup

Get SQLite version `3.31.1 2020-01-27`.
Download the [Chinook sample database](https://cdn.sqlitetutorial.net/wp-content/uploads/2018/03/chinook.zip).
Run SQLite using that `.db` file.

### Doc

See lecture notes.

### VSCode

None that will help with syntax highlighting.

## Assignment

There are three questions.
Each question contains its own sql file.
Your queries should be in each separate file.

We are working with Chinook sample database -- <https://www.sqlitetutorial.net/sqlite-sample-database/>.

### Questions

#### Q1 -- hello

Print out `Hello, World!`.
That's it.
The output table is a single cell containing the string `Hello, World!`.

#### Q2 -- intersection

Write a SQL query to determine which customers share a first name with any employee.
The output table should be one column containing the shared first names.

#### Q3 -- joins

Write a SQL query to calculate the average track length (milliseconds) and total track time (milliseconds), per album, for albums which contain at least one track whose genre is `Electronica/Dance`.
The output table should be four columns -- album id, album title, millisecond average, total album time.

**Get started on this one early.**

### Submission

Upload the three files `q1.sql`, `q2.sql`, and `q3.sql` to Gradescope.

### Evaluation

Submit each sql file to Gradescope.
This project is 100% private tests.
**For each question, your query must be one statement for full credit.**

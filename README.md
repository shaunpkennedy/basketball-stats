# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization
    - rails generate model Player name:string 
    - rails generate model Team name:string year:integer number:integer
    - rails generate model Game date:date opponent_team_name:string city:string is_victory:boolean is_home_team:boolean score:integer opponent_score:integer team:references
    - rails generate model Stat two_pointers_made:integer two_pointers_attempted:integer three_pointers_made:integer three_pointers_attempted:integer free_throws_made:integer free_throws_attempted:integer assists:integer rebounds:integer steals:integer blocks:integer fouls:integer started_game:boolean game:references


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

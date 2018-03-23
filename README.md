## Fantasy Football

A simple Ruby on Rails application. 

Tech stack:

* AdminLte2 for Control Panel Template

* Postgres database

* RSpec automation test

## Some assumptions

Because I did this exercise at weekend so I could not clarify a few thing, therefore I made a couple of assumptions:

* User and Player are the same entity

* The exercise mentions `Match` but asks for `Creating and managing games between teams`, so I let the (application) user manage games through matches

* A match can be a draw, when there are only 2 games played and each team wins 1 game, in this case the match has no winner

## Testing

To test, run `rspec` (96.6% covered)

## Deployment

Site is available at https://fantasy-football-duc-anh-nguye.herokuapp.com/
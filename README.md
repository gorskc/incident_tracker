# README #

The incident_tracker project was developed to provide a platform for tracking and documenting workplace incidents and injuries. Workplace injuries are unfortunately common, but often preventable. 
The incident_tracker web app allows users to:

* enter details about incidents
* record injuries
* create users
* create corrective actions to prevent future injuries


## Built With ##
* Ruby version 2.3.0

* Rails version 4.2.5

* PostgreSQL

## Testing ##

Feature specs were written using RSpec and Capybara. To run a test, use the following code:

`bundle exec rspec spec`


## Getting Started ##

Make sure you have Bundler[bundler.io] and the {Heroku Toolbelt}[https://toolbelt.heroku.com] installed.


## Deployment with Heroku ##

```
git clone https://github.com/gorskc/incident_tracker.git
cd incident_tracker
bundle install
heroku create
git push heroku master
heroku run rake db:migrate
heroku ps:scale web=1
heroku ps
```

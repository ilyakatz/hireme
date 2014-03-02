# Set up your own hiring API

If you think that hiring through an email is no fun, let others know that they can hire you through an API:

* Update `config/initializers/apipe.rb`
* Download dependencies

    `bundle install`

* Migrate database

    `rake db:create db:migrate`

* Configure environmental variables

  1. `cp config/application.examples.yml config/application.yml`

  1. Update `config/application.yml` as per comments in the file

* Run tests, 'cause that's what developers do

    `rspec spec`

## Generate example API calls

  `APIPIE_RECORD=examples rspec spec`

# Set up your own hiring API

If you think that hiring through an email is no fun, let others know that they can hire you through an API:

* Update `config/initializers/apipe.rb`
* Download dependencies

    `bundle install`

* Migrate database

    `rake db:create db:migrate`

* Run tests, 'cause that's what developers do

    `rspec spec`

## Generate example API calls

  `APIPIE_RECORD=examples rspec spec`

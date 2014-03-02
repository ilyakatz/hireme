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

* Start it up

  * Using forman

     `gem install forman`

     `forman start`

      Access documentation at [http://localhost:5000/doc/api/v1](http://localhost:5000/doc/api/v1)

  * Out of the box

    `rails server`

      Access documentation at [http://localhost:3000/doc/api/v1](http://localhost:3000/doc/api/v1)

## Generate example API calls

  `APIPIE_RECORD=examples rspec spec`

## Demo

  [http://katzmopolitan.herokuapp.com/doc/api/v1](http://katzmopolitan.herokuapp.com/doc/api/v1)

  Feel free to use to send me offers

# Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests.
* Commit
* Send a pull request.

# Copyright

Copyright (c) 2014 Ilya Katz
See MIT-LICENSE for details.


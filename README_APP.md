Welcome to Barney!
------------------

TL;DR
=====

Because every tool plays a role:

+ [Rails 4.0.0.beta](http://rubyonrails.org/).
+ [PostgreSQL](http://www.postgresql.org/) as the Database.
+ [Puma](http://puma.io/) as the Web Server.
+ [Heroku](http://www.heroku.com/) as the deployment platform.

How to use:
===========

Ready to code!

    $ vim .
    # PROFIT!

Details
=======

This provides the following customizations:

### General:

+ Rails 4.0.0.beta1.
+ Adds a `.ruby-version` file with Ruby `2.0.0-p0` by default.
+ Only Ruby 2.0+ syntax.
+ Avoid unnecessary parentheses.
+ Single Quotes > Double Quotes.
+ [PostgreSQL](http://www.postgresql.org/) database in development, test and production (heroku).
+ PGSQL strings with no limit. [Reference](https://github.com/frodsan/barney/blob/master/config/application.rb#L25).
+ [Puma](http://puma.io/) as the Web Server.
+ [Turbolinks](https://github.com/rails/turbolinks) ✓.
+ [JQuery](http://jquery.com/) ✓.
+ [Simple Form](https://github.com/plataformatec/simple_form) - Rails forms made easy.
+ [Draper](https://github.com/drapergem/draper) - View Models for Rails.
+ [Kaminari](https://github.com/amatsuda/kaminari) for pagination.
+ [foreman](https://github.com/ddollar/foreman) to run the application using a `Procfile`.
+ [dotenv](https://github.com/bkeepers/dotenv) to load environment variables from a `.env` file. The file is generated
  after the application structure is created.
+ Use [Spring](https://github.com/jonleighton/spring) to preload Rails.
+ [Guachiman](https://github.com/epiclabs/guachiman) for basic authorization.

### Development:

+ Set `.ruby-version` to `2.0.0-rc2`.
+ [CoffeeScript](http://coffeescript.org/).
+ [Sass - Sassy CSS](http://sass-lang.com/).
+ [quiet_assets](https://github.com/evrone/quiet_assets) to mute assets pipeline log messages.
+ [pry-rails](https://github.com/rweng/pry-rails): causes `rails console` to open the [Pry](http://pryrepl.org/) console.
+ Custom generators config: No assets, no helpers and no test generated files.

### Testing:

+ General [test_helper](https://github.com/frodsan/barney/blob/master/test/test_helper.rb).
+ [Fixtures](http://edgeapi.rubyonrails.org/classes/ActiveRecord/FixtureSet.html) are great.
+ [Mocha](https://github.com/freerange/mocha) for mocking and stubbing.
+ Run tests in [random order](https://github.com/frodsan/barney/blob/master/test/test_helper.rb#L14).
+ Use `ActiveSupport::TestCase` as the default. For example for model testing.
+ Adds [TestHelpers::MockAndStubModel](https://github.com/frodsan/barney/blob/master/test/support/mock_and_stub_model.rb)
  module to `ActiveSupport::TestCase` to stub or mock Active Model or Active Record
  objects.
+ Use `ActionController::TestCase` for controller testing.
+ Adds [TestHelpers::ViewRendering](https://github.com/frodsan/barney/blob/master/test/support/view_rendering.rb)
  module to `ActionController::TestCase` because I don't like to render views in
  controller testing. You can set the `render_views` option to `true` if you want
  the regular behaviour.
+ Don't use `test/integration`.

### Production:

+ Heroku FTW!

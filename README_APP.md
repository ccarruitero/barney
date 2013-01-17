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

+ Rails 4.
+ Only Ruby 1.9.3+ syntax.
+ Avoid unnecessary parentheses.
+ Single Quotes > Double Quotes.
+ [PostgreSQL](http://www.postgresql.org/) database in development, test and production (heroku).
+ PGSQL strings with no limit. [Reference](https://github.com/frodsan/barney/blob/master/config/application.rb#L25).
+ [Puma](http://puma.io/) as the Web Server.
+ Add `lib` directory to the autoload paths.
+ [Turbolinks](https://github.com/rails/turbolinks) ✓.
+ [JQuery](http://jquery.com/) ✓.

### Development:

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
+ Use `ActionController::TestCase` for controller testing.

### Production:

+ Heroku FTW!

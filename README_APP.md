# Welcome to Barney!

## TL;DR

Because every tool plays a role:

+ [Rails 3.2.9](http://rubyonrails.org/).
+ [PostgreSQL](http://www.postgresql.org/) as the Database.
+ [Puma](http://puma.io/) as the Web Server.
+ [Heroku](http://www.heroku.com/) as the deployment platform.
+ [MiniTest](https://github.com/seattlerb/minitest) as the de facto testing framework.
+ [Strong Parameters](https://github.com/rails/strong_parameters) for mass assignment protection.

## How to use:

Ready to code!

    $ vim .
    # PROFIT!

## Details

This provides the following customizations:

## General:

+ Rails 3.2.8.
+ Avoid parentheses.
+ Only Ruby 1.9+ syntax.
+ Single Quotes > Double Quotes.
+ PostgreSQL by default.

## Development:

+ No CoffeeScript.
+ quiet_assets.
+ pry-rails.
+ generators config.
+ structure.sql > schema.rb.
+ PGSQL strings with no limit.

## Testing:

+ MiniTest.
+ turn: Tests with pretty format.
+ No factories/fabricators. Fixtures are great.
+ I like ActiveSupport::TestCase helper methods.
+ Run tests in random order.
+ General `test_helper`.

## Production:

+ Threadsafe mode enabled.
+ Puma.
+ Heroku FTW!

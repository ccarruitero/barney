# Welcome to Barney!

## TL;DR

Because every tool plays a role:

+ [Rails 3.2.8](http://rubyonrails.org/) as an API Server.
+ [PostgreSQL](http://www.postgresql.org/) as the Database.
+ [Puma](http://puma.io/) as the Web Server.
+ [Heroku](http://www.heroku.com/) as the deployment platform.
+ [MiniTest](https://github.com/seattlerb/minitest) as the de facto testing framework.

## How to use:

Ready to code!

    $ vim .
    # PROFIT!

## Details

This provides the following customizations:

## General:

+ Rails 3.2.8.
+ Avoid parentheses.
+ Only Ruby 1.9+ syntax.
+ Single Quotes > Double Quotes.
+ PostgreSQL by default.

## Development:

+ No CoffeeScript.
+ quiet_assets.
+ pry-rails.
+ generators config.
+ structure.sql > schema.rb.
+ PGSQL strings with no limit.

## Testing:

### Gems:

+ MiniTest. (Only minitest/unit).
+ Capybara for acceptance tests.
+ Poltergeist: Capybara driver. No dependencies, just phantom.js love.
+ minitest-capybara: MiniTest matchers for Capybara
  (e.g. assert_have_content page, 'me').
+ turn: Tests with pretty format.

### Test directories structure:

```
test/
  fixtures/
  lib/ Tests that don't require rails.
  models/ Models, ActiveModel::Model models, more models.
  api/ Controller tests (if i'm building an API?).
  acceptance/ Capybara magic to close my github issues.
    {user/admin/guest/owner} I prefer to divide them into user roles.
```

### Configuration:

+ No factories/fabricators. Fixtures are great.
+ I like ActiveSupport::TestCase helper methods.
+ Run tests in random order.
+ General `test_helper` with two friends: `integration_test_helper` and
  `acceptance_test_helper`.
+ I run Capybara with acceptance tests and ActionDispatch::IntegrationTest with
  integration tests.
+ rake test, rake test:models, rake test:integrations, rake test:acceptances.

## Production:

+ Threadsafe mode enabled.
+ Puma.
+ Heroku FTW!

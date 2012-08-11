# Betty: Rails Template

This provides the following customizations:

## General:

+ Rails 3.2.8.
+ Avoid parentheses.
+ Only Ruby 1.9+ syntax.
+ Single Quotes > Double Quotes.
+ PostgreSQL by default.

## Development:

+ No CoffeeScript.

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
  unit/ Models, ActiveModel::Model models, more models.
  integration/ Controller tests (if i'm building an API?).
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
+ rake test, rake test:units, rake test:integrations, rake test:acceptances.

## Production:

+ Threadsafe mode enabled.
+ Puma.
+ Heroku FTW!

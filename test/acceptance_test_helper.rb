require 'test_helper'

require 'capybara/rails'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist

class AcceptanceTest < ActiveSupport::TestCase
  include Rails.application.routes.url_helpers
  include Capybara::RSpecMatchers
  include Capybara::DSL

  teardown do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  def self.test name, options = {}, &block
    Capybara.current_driver = Capybara.javascript_driver if options[:js]
    super name, &block
  end

  def t *args
    I18n.t *args
  end
end

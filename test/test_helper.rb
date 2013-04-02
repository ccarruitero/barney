ENV['RAILS_ENV'] = 'test'
require File.expand_path '../../config/environment', __FILE__
require 'rails/test_help'
require 'minitest/pride'
require 'minitest/focus'
require 'support/mock_and_stub_model'
require 'support/view_rendering'

Draper::ViewContext.test_strategy :fast

class ActiveSupport::TestCase
  include TestHelpers::MockAndStubModel

  ActiveRecord::Migration.check_pending!

  parallelize_me!
end

class ActionController::TestCase
  include TestHelpers::ViewRendering

  def t *args
    I18n.t *args
  end
end

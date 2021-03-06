ENV['RAILS_ENV'] ||= 'test'
require File.expand_path '../../config/environment', __FILE__
require 'rails/test_help'
require 'minitest/pride'
require 'minitest/focus'
require 'minitest/hell'
require 'support/mock_and_stub_model'

class ActiveSupport::TestCase
  include TestHelpers::MockAndStubModel

  ActiveRecord::Migration.check_pending!

  fixtures :all
end

class ActionController::TestCase
  include TestHelpers::ViewRendering

  def t *args
    I18n.t *args
  end
end

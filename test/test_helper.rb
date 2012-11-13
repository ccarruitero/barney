ENV['RAILS_ENV'] = 'test'
require File.expand_path '../../config/environment', __FILE__
require 'rails/test_help'
require 'mocha/setup'
require 'support/mock_and_stub_model'
require 'support/view_rendering'
require 'minitest-activemodel'

class ActiveSupport::TestCase
  def self.test_order
    :parallel
  end
end

class ActiveModel::TestCase
  include MiniTest::Matchers::ActiveModel
end

class ActionController::TestCase
  include ActiveSupport::Testing::ViewRendering

  def login_as user
    @controller.stubs(:current_user).returns user
  end

  def t *args
    I18n.t *args
  end
end

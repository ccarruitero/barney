ENV['RAILS_ENV'] = 'test'
require File.expand_path '../../config/environment', __FILE__
require 'rails/test_help'
require 'support/mock_and_stub_model'
require 'support/view_rendering'

class ActiveSupport::TestCase
  include ActiveSupport::Testing::MochaModule

  fixtures :all

  def self.test_order
    :random
  end
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

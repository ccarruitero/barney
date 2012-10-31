ENV['RAILS_ENV'] = 'test'
require File.expand_path '../../config/environment', __FILE__
require 'rails/test_help'
require 'support/mocha_module'
require 'support/mock_and_stub_model'

class ActiveSupport::TestCase
  include ActiveSupport::Testing::MochaModule

  def self.test_order
    :random
  end
end

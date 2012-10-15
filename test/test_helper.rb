ENV['RAILS_ENV'] = 'test'
require File.expand_path '../../config/environment', __FILE__
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

  def self.test_order
    :random
  end
end

ENV['RAILS_ENV'] = 'test'

require File.expand_path '../../config/environment', __FILE__

require 'active_support/test_case'

begin
  require 'turn'
  Turn.config { |c| c.natural = true }
rescue LoadError
end

class ActiveSupport::TestCase
  include ActiveRecord::TestFixtures

  self.fixture_path = "#{Rails.root}/test/fixtures/"

  # Run your tests like a man.
  def self.test_order
    :random
  end
end

class UnitTest < ActiveSupport::TestCase
end

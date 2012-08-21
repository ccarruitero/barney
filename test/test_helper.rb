ENV['RAILS_ENV'] = 'test'

require File.expand_path '../../config/environment', __FILE__

require 'active_support/test_case'

require 'turn'
Turn.config { |c| c.natural = true }

# Pass ARLOG=true to show SQL Queries
ActiveRecord::Base.logger = Logger.new(STDOUT) if ENV['ARLOG']

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

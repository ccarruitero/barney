ENV['RAILS_ENV'] = 'test'

require File.expand_path '../../config/environment', __FILE__

require 'active_support/test_case'

begin
  require 'turn'
  Turn.config { |c| c.natural = true }
rescue LoadError
end

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
  def assert_valid model, *attrs
    assert_model :valid, model, *attrs
  end

  def assert_invalid model, *attrs
    assert_model :invalid, model, *attrs
  end

  private

  def assert_model option, model, *attrs
    result = model.send :"#{option}?"

    if attrs.any?
      validation = (option == :valid) ? :empty? : :any?

      attrs.each do |attr|
        assert model.errors[attr].send(validation),
               "#{attr.to_s.inspect} attribute expected to be #{option}"
      end
    else
      assert result, "#{model.class} is expected to be #{option}"
    end
  end
end

require File.expand_path '../boot', __FILE__

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require :default, Rails.env

module Barney
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Generators config.
    config.generators do |g|
      g.assets         false
      g.helper         false
      g.test_framework false
      g.stylesheets    false
    end

    # Deletes postgresql String limit.
    initializer 'postgresql.no_default_string_limit' do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::NATIVE_DATABASE_TYPES[:string].delete :limit
      end
    end
  end
end

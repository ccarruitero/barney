require File.expand_path '../boot', __FILE__

require 'rails/all'

# Assets should be precompiled for production (so we don't need the gems loaded then).
Bundler.require(*Rails.groups(assets: %w(development test)))

module Barney
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    config.autoload_paths += %W(#{config.root}/lib)

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

source :rubygems

ruby '1.9.3'

gem 'rails', '4.0.0.beta', github: 'rails/rails'
gem 'pg'
gem 'puma'

gem 'jquery-rails'
gem 'turbolinks'

group :development do
  gem 'pry-rails'
  gem 'quiet_assets', github: 'evrone/quiet_assets'
end

group :test do
  gem 'mocha', require: false
end

group :assets do
  gem 'sprockets-rails', '~> 2.0.0.rc1'
  gem 'coffee-rails',    '~> 4.0.0.beta', github: 'rails/coffee-rails'
  gem 'sass-rails',      '~> 4.0.0.beta', github: 'rails/sass-rails'
  gem 'uglifier',        '>= 1.0.3'
end

gem 'foreman'
gem 'dotenv', groups: [:development, :test, :assets]

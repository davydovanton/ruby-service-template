# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.7.0'

# Monitoring and logging
gem 'semantic_logger'

# dependency managment
gem 'dry-system'

# Other
gem 'bigdecimal', '1.4.2'
gem 'dotenv', '~> 2.4'
gem 'rake'

group :development do
end

group :test, :development do
  # style check
  gem 'rubocop', require: false
  gem 'rubocop-rspec'
end

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-json', require: false
end

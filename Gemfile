#!/usr/bin/env bundle

source 'https://rubygems.org'

# Declare the gem's dependencies in `middleman-wundertuete.gemspec`. Bundler will treat runtime dependencies like base
# dependencies, and development dependencies will be added by default to the `:development` group.
gemspec

# == Development ===

group :development do
  gem 'guard-rspec',    '~> 4.6.4', require: false
  gem 'guard-cucumber', '~> 1.6.0', require: false
end

# == Test ===

group :test do
  # --- Code Analysis ---

  gem 'rubocop',       '~> 0.34.0', require: false
  gem 'rubocop-rspec', '~> 1.3.1',  require: false

  # --- Code coverage ---

  gem 'simplecov', '~> 0.10.0', require: false

  gem 'codeclimate-test-reporter', '~> 0.4.8', require: false

  # --- Formatter ---

  gem 'nyan-cat-formatter', '~> 0.11', require: false
end
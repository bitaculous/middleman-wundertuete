#!/usr/bin/env bundle

source 'https://rubygems.org'

# Declare the gem's dependencies in `middleman-wundertuete.gemspec`. Bundler will treat runtime dependencies like base
# dependencies, and development dependencies will be added by default to the `:development` group.
gemspec

# == Development ===

group :development do
  gem 'guard-rspec', '~> 4.6.4', require: false
end

group :misc do
  gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

  gem 'rb-fsevent', '~> 0.9.6', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
end
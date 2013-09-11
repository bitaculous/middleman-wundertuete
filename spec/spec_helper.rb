require 'bundler/setup'

lib = File.expand_path '../../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'middleman-wundertuete'

RSpec.configure do |config|
  # ...
end
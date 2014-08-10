#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'middleman-wundertuete/version'

Gem::Specification.new do |spec|
  spec.name          = 'middleman-wundertuete'
  spec.summary       = 'A “Wundertüte” for Middleman.'
  spec.author        = 'Maik Kempe'
  spec.email         = 'mkempe@bitaculous.com'
  spec.homepage      = 'http://bitaculous.github.io/middleman-wundertuete'
  spec.version       = Middleman::Wundertuete::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.licenses      = 'MIT'

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(/^bin/).map { |file| File.basename file }
  spec.test_files    = spec.files.grep(/^(features|spec|test)/)

  spec.required_ruby_version = '~> 2.0'

  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'middleman', '~> 3.3.3'

  spec.add_development_dependency 'bundler', '~> 1.6.3'

  spec.add_development_dependency 'rake', '~> 10.3.2'

  spec.add_development_dependency 'rspec', '~> 3.0.0'
end
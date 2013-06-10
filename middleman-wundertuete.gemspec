#!/usr/bin/env gem build

lib = File.expand_path('../lib', __FILE__)
$:.unshift lib unless $:.include? lib

require 'middleman-wundertuete/version'

Gem::Specification.new do |spec|
  spec.name          = 'middleman-wundertuete'
  spec.summary       = 'A “wundertüte” for Middleman (Hand-crafted frontend development).'
  spec.authors       = 'Maik Kempe'
  spec.email         = 'dev@nrolla.com'
  spec.homepage      = 'https://github.com/mkempe/middleman-wundertuete'
  spec.version       = Middleman::Wundertuete::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.date          = '2013-06-10'
  spec.licenses      = 'MIT'

  spec.require_paths = ['lib']

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map { |file| File.basename file }
  spec.test_files    = spec.files.grep(%r{^(features|spec|test)/})

  spec.required_ruby_version = '>= 2.0.0'

  spec.required_rubygems_version = Gem::Requirement.new '>= 2.0.0'

  spec.add_runtime_dependency 'middleman', '~> 3.0.14'

  spec.add_runtime_dependency 'bourbon',   '~> 3.1.6'

  spec.add_development_dependency 'rake',    '~> 10.0.4'

  spec.add_development_dependency 'bundler', '~> 1.3.5'

  spec.add_development_dependency 'rspec',   '~> 2.13.0'
end
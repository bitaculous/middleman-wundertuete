#!/usr/bin/env gem build
# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'middleman-wundertuete/version'

Gem::Specification.new do |s|
  s.name          = 'middleman-wundertuete'
  s.summary       = 'A “wundertüte” for Middleman (Hand-crafted frontend development).'
  s.description   = 'A “wundertüte” for Middleman (Hand-crafted frontend development).'
  s.authors       = ['Maik Kempe']
  s.email         = ['dev@nrolla.com']
  s.homepage      = 'https://github.com/mkempe/middleman-wundertuete'
  s.version       = Middleman::Wundertuete::VERSION
  s.platform      = Gem::Platform::RUBY
  s.date          = '2012-12-26'
  s.licenses      = ['MIT']

  s.require_paths = ['lib']

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(features|spec|test)/})

  s.add_runtime_dependency 'middleman', '~> 3.0.7'

  s.add_development_dependency 'rake',    '~> 10.0.3'

  s.add_development_dependency 'rspec',   '~> 2.12.0'

  s.add_development_dependency 'bourbon', '~> 3.0.1'

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
end
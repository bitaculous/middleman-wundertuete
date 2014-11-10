#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'middleman-wundertuete/version'

Gem::Specification.new do |spec|
  spec.name        = 'middleman-wundertuete'
  spec.summary     = 'A “Wundertüte” for Middleman.'
  spec.author      = 'Maik Kempe'
  spec.email       = 'mkempe@bitaculous.com'
  spec.homepage    = 'https://bitaculous.github.io/middleman-wundertuete/'
  spec.license     = 'MIT'
  spec.version     = Middleman::Wundertuete::VERSION

  spec.files       = `git ls-files`.split($\)
  spec.executables = spec.files.grep(/^bin/).map { |file| File.basename file }
  spec.test_files  = spec.files.grep(/^(features|spec|test)/)

  spec.required_ruby_version = '~> 2.1'

  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'middleman-core', '~> 3.3.7'

  spec.add_development_dependency 'bundler', '~> 1.7'

  spec.add_development_dependency 'rake', '~> 10.3.2'

  spec.add_development_dependency 'rspec', '~> 3.1.0'
end
#!/usr/bin/env gem build
# encoding: utf-8

$:.push File.expand_path('../lib', __FILE__)

require 'middleman-actionpack/version'

Gem::Specification.new do |s|
  s.name          = 'middleman-actionpack'
  s.summary       = 'Actionpack for Middleman.'
  s.description   = 'Actionpack for Middleman.'
  s.authors       = ['Maik Kempe']
  s.email         = ['dev@nrolla.com']
  s.homepage      = 'https://github.com/mkempe/middleman-actionpack'
  s.version       = Middleman::Actionpack::VERSION
  s.date          = '2012-10-01'
  s.licenses      = ['MIT']

  s.require_paths = ['lib']

  s.files = %w[
    bin/donar
    lib/donar/ui/shell.rb
    lib/donar/cli.rb
    lib/donar/version.rb
    lib/donar.rb
    COPYING
    Gemfile
    Rakefile
    README.md
  ]

  s.test_files = s.files.grep(%r{^(features|spec|test)/})

  s.add_runtime_dependency 'middleman-more', '~> 3.0.0'

  s.add_development_dependency 'rake',  '~> 0.9.2'
  s.add_development_dependency 'rspec', '~> 2.11.0'

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
end
#!/usr/bin/env gem build

require_relative 'lib/middleman/wundertuete/version'

Gem::Specification.new 'middleman-wundertuete', Middleman::Wundertuete::VERSION do |spec|
  spec.summary          = 'A Lucky Bag for Middleman'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/middleman-wundertuete/'
  spec.license          = 'MIT'
  spec.files            = Dir['{features,fixtures,lib}/**/*', 'CONTRIBUTING.md', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['CONTRIBUTING.md', 'LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.2'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'middleman-core', '>= 3.4.1', '< 5.0'

  spec.add_development_dependency 'rake',  '~> 10.5', '>= 10.5.0'
  spec.add_development_dependency 'haml',  '~> 4.0',  '>= 4.0.7'
  spec.add_development_dependency 'rspec', '~> 3.4',  '>= 3.4.0'
  spec.add_development_dependency 'aruba', '~> 0.12', '>= 0.12.0'
end
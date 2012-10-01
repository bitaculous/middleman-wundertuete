# encoding: utf-8

require 'middleman-core'
require 'middleman-actionpack/template'

Middleman::Extensions.register(:actionpack) do
  require 'middleman-actionpack/extension'

  Middleman::Actionpack
end
# encoding: utf-8

require 'middleman-core/extensions'
require 'middleman-wundertuete/template'

Middleman::Extensions.register :wundertuete do
  require 'middleman-wundertuete/extension'

  Middleman::Wundertuete
end
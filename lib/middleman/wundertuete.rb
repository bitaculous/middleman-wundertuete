require 'middleman-core/extensions'

Middleman::Extensions.register :wundertuete do
  require 'middleman/wundertuete/extension'

  Middleman::Wundertuete::Extension
end
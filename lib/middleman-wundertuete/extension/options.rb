# encoding: utf-8

module Middleman
  module Wundertuete
    module Extension
      class Options # All the options for this extension
        KEYS = [:foo, :bar]

        KEYS.each do |name|
          attr_accessor name
        end

        def initialize(options = {})
          options.each do |k,v|
            self.send(:"#{k}=", v)
          end
        end
      end
    end
  end
end
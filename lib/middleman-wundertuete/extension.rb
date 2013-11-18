require 'middleman-wundertuete/extension/options'
require 'middleman-wundertuete/helpers/tag_helper'
require 'middleman-wundertuete/helpers/text_helper'

module Middleman
  module Wundertuete
    class << self # Setup extension
      def registered(app, options = {}, &block) # Once registered
        settings = Extension::Options.new options

        yield settings if block_given?

        app.send :include, Helpers # Include helpers
      end

      alias :included :registered
    end

    module Helpers # Helpers for use within templates and layouts
      include Middleman::Wundertuete::Helpers::TagHelper
      include Middleman::Wundertuete::Helpers::TextHelper
    end
  end
end
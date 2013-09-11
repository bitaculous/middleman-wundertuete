require 'middleman-wundertuete/extension/options'
require 'middleman-wundertuete/helpers/layout_helper'
require 'middleman-wundertuete/helpers/text_helper'

module Middleman
  module Wundertuete
    class << self # Setup extension
      def registered(app, options = {}, &block) # Once registered
        settings = Extension::Options.new options

        yield settings if block_given?

        app.send :include, Helpers # Include helpers

        app.after_configuration do # Once configuration is loaded
          assets = File.expand_path('../../../vendor/assets', __FILE__)

          %w[fonts images javascripts stylesheets].each { |type| sprockets.append_path "#{assets}/#{type}" }
        end
      end

      alias :included :registered
    end

    module Helpers # Helpers for use within templates and layouts
      include Middleman::Wundertuete::Helpers::LayoutHelper
      include Middleman::Wundertuete::Helpers::TextHelper
    end
  end
end
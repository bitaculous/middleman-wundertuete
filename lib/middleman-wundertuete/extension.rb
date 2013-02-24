require 'middleman-wundertuete/extension/options'

require 'middleman-wundertuete/helpers/haml_helper'
require 'middleman-wundertuete/helpers/text_helper'

module Middleman
  module Wundertuete
    class << self # Setup extension
      def registered(app, options = {}, &block) # Once registered
        settings = Extension::Options.new options

        yield settings if block_given?

        config_dir = File.expand_path('../extension/config', __FILE__) # Get config directory
        assets_dir = File.expand_path('../../../vendor/assets', __FILE__) # Get assets directory

        Dir["#{config_dir}/*.rb"].each { |config| load(config) } # Load additional configurations

        app.set :sass_assets_paths, [ # Set sass assets paths
          "#{assets_dir}/stylesheets",
          "#{assets_dir}/stylesheets/bourbon"
        ]

        app.set :js_assets_paths, [ # Set javascript assets paths
          "#{assets_dir}/javascripts"
        ]

        app.send :include, Helpers # Include helpers

        app.after_configuration do # Once configuration is parsed
          # ...
        end
      end

      alias :included :registered
    end

    module Helpers # Helpers for use within templates and layouts
      include Middleman::Wundertuete::Helpers::HamlHelper if defined? Haml
      include Middleman::Wundertuete::Helpers::TextHelper
    end
  end
end
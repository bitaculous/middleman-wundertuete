# encoding: utf-8

module Middleman
  module Wundertuete
    # All the options for this extension
    class Options < Struct.new(:foo, :bar); end

    class << self # Setup extension
      def registered(app, options = {}, &block) # Once registered
        settings = Options.new(options)
        yield settings if block_given?

        app.after_configuration do # Once configuration is parsed
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
        end
      end

      alias :included :registered
    end
  end
end
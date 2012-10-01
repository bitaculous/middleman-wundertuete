# encoding: utf-8

module Middleman
  module Actionpack
    class << self # Setup extension
      def registered(app, options = {}) # Once registered
        app.after_configuration do
          assets_dir = File.expand_path('../../../vendor/assets', __FILE__)

          app.set :sass_assets_paths, [
            "#{assets_dir}/stylesheets/",
            "#{assets_dir}/stylesheets/bourbon"
          ]

          app.set :js_assets_paths, [
            "#{assets_dir}/javascripts"
          ]
        end
      end
    end

    alias :included :registered
  end
end

::Middleman::Extensions.register(:actionpack, Middleman::Actionpack)
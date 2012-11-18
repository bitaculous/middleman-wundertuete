# encoding: utf-8

module Middleman
  module Wundertuete
    class Template < Middleman::Templates::Base
      class_option 'css_dir', default: 'stylesheets', desc: 'The path to the css files.'

      class_option 'images_dir', default: 'images', desc: 'The path to the image files.'

      class_option 'js_dir', default: 'javascripts', desc: 'The path to the javascript files.'

      def self.source_root
        File.dirname(__FILE__)
      end

      def build_scaffold!
        template 'template/shared/config.tt', File.join(location, 'config.rb')
      end
    end
  end
end

Middleman::Templates.register(:wundertuete, Middleman::Wundertuete::Template)
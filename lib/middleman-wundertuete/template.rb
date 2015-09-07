require 'middleman-core/templates'

module Middleman
  module Wundertuete #:nodoc:
    # = UuidValidator
    #
    # The Template class, inherited from `Middleman::Templates::Base`.
    class Template < Middleman::Templates::Base
      class_option 'css_dir',    default: 'assets/stylesheets', desc: 'The path to the CSS files.'
      class_option 'images_dir', default: 'assets/images',      desc: 'The path to the image files.'
      class_option 'js_dir',     default: 'assets/javascripts', desc: 'The path to the JavaScript files.'

      def self.source_root
        File.join File.dirname(__FILE__), 'template'
      end

      # rubocop:disable Metrics/AbcSize
      def build_scaffold!
        template  'config.tt', File.join(location, 'config.rb')
        directory 'source',    File.join(location, 'source')

        empty_directory File.join(location, 'source/assets', options[:css_dir])
        empty_directory File.join(location, 'source/assets', options[:images_dir])
        empty_directory File.join(location, 'source/assets', options[:js_dir])
      end
    end
  end
end

Middleman::Templates.register :wundertuete, Middleman::Wundertuete::Template
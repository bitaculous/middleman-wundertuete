# encoding: utf-8

module Middleman
  module Wundertuete
    module Helpers
      # Public: Various haml helper methods.
      module HamlHelpers
        # Public: Helper method to generate conditional html tags for IE. We're just conditionally adding
        # an extra class onto the html tag. This allows us to keep our browser-specific css in the same
        # file. For more information see Paul Irish's blog post "Conditional stylesheets vs CSS hacks?
        # Answer: Neither!" (http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither).
        #
        # language - The String naming the language (default: en).
        # block    - An optional block.
        #
        # Returns the generate html as String.
        def html_tag(language = 'en', &block)
          haml_concat <<-"HTML".gsub(/^\s+/, '')
            <!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="#{language}"> <![endif]-->
            <!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="#{language}"> <![endif]-->
            <!--[if IE 8]> <html class="no-js lt-ie9" lang="#{language}"> <![endif]-->
            <!--[if gt IE 8]><!--> <html class="no-js" lang="#{language}"> <!--<![endif]-->
          HTML

          haml_concat capture(&block) << "</html>" if block_given?
        end
      end
    end
  end
end
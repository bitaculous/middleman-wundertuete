# encoding: utf-8

module Middleman
  module Wundertuete
    module Helpers
      # Public: Various haml helpers.
      module HamlHelpers
        # Public: Helper to generate conditional html tags for IE. We're just conditionally adding
        # an extra class onto the html tag. This allows us to keep our browser-specific css in the same
        # file. For more information see Paul Irish's blog post “Conditional stylesheets vs CSS hacks?
        # Answer: Neither!” (http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither).
        #
        # attributes - The Hash attributes used to refine the html tag (default: {}).
        #
        # Returns the generate html as String.
        def html_tag(attributes = {}, &block)
          if block_given?
            attributes.symbolize_keys!

            conditional_tags = <<-HTML.gsub(/^\s+/, '').strip
              <!--[if lt IE 7]> #{tag(:html, merge_attributes('lt-ie9 lt-ie8 lt-ie7', attributes), true)} <![endif]-->
              <!--[if IE 7]> #{tag(:html, merge_attributes('lt-ie9 lt-ie8', attributes), true)} <![endif]-->
              <!--[if IE 8]> #{tag(:html, merge_attributes('lt-ie9', attributes), true)} <![endif]-->
              <!--[if gt IE 8]><!-->
            HTML

            html = conditional_tags

            if block_is_haml?(block)
              haml_concat html

              haml_tag :html, attributes do
                haml_concat '<!--<![endif]-->'

                yield
              end
            end
          else
            raise '“html_tag” requires a block.'
          end
        end

        private

        # Private: Method for merging attributes.
        #
        # css_classes - The String CSS classes separated by space.
        # options     - The Hash optional attributes (default: {}).
        #
        # Returns merged attributes as Hash.
        def merge_attributes(css_classes, attributes = {})
          classes = attributes[:class] || ''
          classes.strip!
          classes = " #{classes}" if classes.present?
          classes = css_classes + classes
          attributes.merge(class: classes)
        end
      end
    end
  end
end
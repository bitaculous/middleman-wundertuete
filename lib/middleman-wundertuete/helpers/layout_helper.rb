module Middleman
  module Wundertuete
    module Helpers
      module LayoutHelper
        # Public: Generates html tag with conditional classes for IE. We're just conditionally adding
        # an extra class onto the html tag. This allows us to keep our browser-specific css in the same
        # file. For more information see Paul Irish's blog post “Conditional stylesheets vs CSS hacks?
        # Answer: Neither!” (http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither).
        #
        # attributes - The Hash optional attributes used to refine the html tag (default: {}).
        #
        # Returns the generate html as String.
        def html_tag(attributes = {}, &block)
          if block_given?
            attributes.symbolize_keys!

            conditional_tags = <<-HTML.gsub(/^\s+/, '').strip
              <!--[if IE 7]> #{tag(:html, merge_attributes('ie7 ie', attributes), true)} <![endif]-->
              <!--[if IE 8]> #{tag(:html, merge_attributes('ie8 ie', attributes), true)} <![endif]-->
              <!--[if IE 9]> #{tag(:html, merge_attributes('ie9 ie', attributes), true)} <![endif]-->
              <!--[if (gt IE 9)|!(IE)]><!-->
            HTML

            html = conditional_tags

            if block_is_haml? block
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

        # Private: Merges attributes.
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
module Middleman
  module Wundertuete
    module Helpers
      module TagHelper #:nodoc:
        # Public: Generates html tag with conditional classes for IE. We're just conditionally adding
        # an extra class onto the html tag. This allows us to keep our browser-specific css in the same
        # file. For more information see Paul Irish's blog post “Conditional stylesheets vs CSS hacks?
        # Answer: Neither!” (http://paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither).
        #
        # attributes - The Hash optional attributes used to refine the html tag (default: {}).
        #
        # Returns the generate html as String.
        #
        # rubocop:disable Metrics/AbcSize
        # rubocop:disable Metrics/MethodLength
        def html_tag(attributes = {}, &block)
          attributes.symbolize_keys!

          conditional_tags = <<-HTML.gsub(/^\s+/, '').strip
            <!--[if IE 7]> #{tag(:html, merge_attributes('ie7 ie', attributes), true)} <![endif]-->
            <!--[if IE 8]> #{tag(:html, merge_attributes('ie8 ie', attributes), true)} <![endif]-->
            <!--[if IE 9]> #{tag(:html, merge_attributes('ie9 ie', attributes), true)} <![endif]-->
            <!--[if (gt IE 9)|!(IE)]><!-->
          HTML

          if block_given?
            handler = find_proper_handler

            case handler
            when Padrino::Helpers::OutputHelpers::ErbHandler
              concat_content conditional_tags.html_safe

              content_tag :html, attributes do
                content = '<!--<![endif]-->'
                content << capture_html(&block)

                content.html_safe
              end
            when Padrino::Helpers::OutputHelpers::HamlHandler
              haml_concat conditional_tags.html_safe

              haml_tag :html, attributes do
                haml_concat '<!--<![endif]-->'.html_safe

                yield
              end
            end
          else
            html = conditional_tags
            html << tag(:html, attributes, true)
            html << '<!--<![endif]-->'

            html.html_safe
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
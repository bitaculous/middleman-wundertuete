# encoding: utf-8

module Middleman
  module Wundertuete
    module Helpers
      # Public: Various helper methods.
      module CustomHelpers
        # Public: Helper method to generate a copyright.
        #
        # copyright_owner - The String naming the copyright owner.
        #
        # options - The Hash options (default: {}):
        #           :initial_year - The String specifying the initial year (optional).
        #
        # Examples
        #
        #   copyright('Foo') → '©2011 Foo - All rights reserved.'
        #
        #   copyright('Foo', { initial_year: '2006' }) → '©2006-2011 Foo - All rights reserved.'
        #
        # Returns the copyright as String.
        def copyright(copyright_owner, options = {})
          if copyright_owner
            time = Time.new # Create new Time instance
            current_year = time.year # Get current year

            year_part = options[:initial_year] ? "©#{options[:initial_year]}-#{current_year}" : "©#{current_year}"

            "#{year_part} #{copyright_owner} - All rights reserved."
          end
        end
      end
    end
  end
end
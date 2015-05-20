module Middleman
  module Wundertuete
    module Helpers
      module TextHelper
        # Public: Handleize an input.
        #
        # input     - The String input.
        # delimiter - The String delimiter (default: '-').
        #
        # Examples
        #
        #   handleize 'Bob Ross'
        #   # => 'bob-ross'
        #
        # Returns the handleized String.
        def handleize(input, delimiter = '-')
          input.to_str.gsub(/[ \_\-\/]/, delimiter).downcase
        end

        # Public: Generates a copyright.
        #
        # owner - The String naming the copyright owner.
        #
        # options - The Hash options (default: {}):
        #           :symbol       - The String specifying the symbol (optional).
        #           :claim        - The String specifying the claim (optional).
        #           :initial_year - The String specifying the initial year (optional).
        #
        # Examples
        #
        #   copyright 'Bob Ross'
        #   # => '©2013 Bob Ross - All rights reserved.'
        #
        #   copyright 'Bob Ross', { symbol: '(c)' }
        #   # => '(c)2013 Bob Ross - All rights reserved.'
        #
        #   copyright 'Bob Ross', { claim: 'All your rights are belong to us.' }
        #   # => '©2013 Bob Ross - All your rights are belong to us.'
        #
        #   copyright 'Bob Ross', { initial_year: '2006' }
        #   # => '©2006-2013 Bob Ross - All rights reserved.'
        #
        # Returns the copyright String.
        def copyright(owner, options = {})
          if owner
            time         = Time.new
            current_year = time.year

            symbol    = options[:symbol] || '©'
            claim     = options[:claim] || 'All rights reserved.'
            year_part = options[:initial_year] ? "#{options[:initial_year]}-#{current_year}" : current_year

            "#{symbol}#{year_part} #{owner} - #{claim}"
          end
        end
      end
    end
  end
end
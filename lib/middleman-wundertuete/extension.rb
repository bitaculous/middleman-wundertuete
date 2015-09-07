require 'middleman-wundertuete/helpers/tag_helper'
require 'middleman-wundertuete/helpers/text_helper'

module Middleman
  module Wundertuete #:nodoc:
    # = UuidValidator
    #
    # The Extension class, inherited from `Middleman::Extension`.
    class Extension < Middleman::Extension
      def initialize(app, options = {}, &block)
        super
      end

      helpers do
        include Middleman::Wundertuete::Helpers::TagHelper
        include Middleman::Wundertuete::Helpers::TextHelper
      end
    end
  end
end
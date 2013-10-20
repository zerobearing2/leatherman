module Extensions
  module Liquid
    module PluralizeFilter

      ##
      # Public: pluralize filter, 
      # requires ActiveSupport pluralize
      # 
      # input - [String] to pluralize
      # size - [Integer] number of inputs
      #
      # Returns String of pluralized input.
      def pluralize(input, size=1)
        if input.nil? then return end
        size>1 ? input.to_s.pluralize : input
      end

    end
  end
end

Liquid::Template.register_filter( Extensions::Liquid::PluralizeFilter )

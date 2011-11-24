module Liquid
  module PluralizeFilter

    #
    # pluralize filter, requires ActiveSupport pluralize
    #
    def pluralize(input, size=1)
      if input.nil? then return end
      size>1 ? input.to_s.pluralize : input
    end

  end
end

Liquid::Template.register_filter(Liquid::PluralizeFilter)

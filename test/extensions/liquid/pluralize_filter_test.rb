require_relative '../../test_helper'

module Extensions::Liquid
  class PluralizeTest < MiniTest::Unit::TestCase

    def test_pluralize
      template = "You only have 2 {{'workout' | pluralize:2}} left."
      assert_match /have 2 workouts left/, Liquid::Template.parse(template).render
    end

  end
end

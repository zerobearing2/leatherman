require_relative '../test_helper'

module Conversions::Distance
  class DistanceProxyTest < MiniTest::Unit::TestCase

    def test_miles_to_meters
      # integers
      assert_equal 3218.688, 2.to_distance.mi_to_m, "integer #mi_to_m"
      assert_equal 3218.688, 2.to_distance.mi_to_meters, "integer #mi_to_meters"

      # floats
      assert_equal 3218.688, 2.0.to_distance.mi_to_m, "float #mi_to_m"
      assert_equal 3218.688, 2.0.to_distance.mi_to_meters, "float #mi_to_meters"
    end

    def test_meters_to_miles
      # integers
      assert_equal 2, 3218.to_distance.m_to_mi.round, "integer #m_to_mi"
      assert_equal 2, 3218.to_distance.meters_to_mi.round, "integer float #meters_to_mi"

      # floats
      assert_equal 2.0, 3218.688.to_distance.m_to_mi, "float #m_to_mi"
      assert_equal 2.0, 3218.688.to_distance.meters_to_mi, "float #meters_to_mi"
    end

  end
end

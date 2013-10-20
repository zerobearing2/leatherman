require_relative '../test_helper'

module Conversions::Speed
  class SpeedProxyTest < MiniTest::Unit::TestCase

    def test_mph_to_kmh
      assert_equal 80.4672, 50.to_speed.mph_to_kmh.round(4)
    end

    def test_ms_to_kmh
      assert_equal 720.0, 200.to_speed.ms_to_kmh.round(4)
    end

    def test_ms_to_mph
      assert_equal 447.3873, 200.to_speed.ms_to_mph.round(4)
    end

  end
end

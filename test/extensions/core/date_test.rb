require_relative '../../test_helper'

module Extensions::Core
  class DateTest < MiniTest::Unit::TestCase

    def test_today_in_time_zone
      ::Time.zone = "America/Los_Angeles"
      Timecop.freeze("2013-08-05T09:00:00") do 
        assert_equal ::Date.parse("2013-08-05"), ::Date.today_in_time_zone
      end

      ::Time.zone = "UTC"
      Timecop.freeze("2013-08-05T09:00:00") do 
        assert_equal ::Date.parse("2013-08-05"), ::Date.today_in_time_zone
      end
    end

  end
end

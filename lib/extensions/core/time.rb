module Extensions
  module Core
    module Time

      #
      # this is ghetto hack to adjust UTC time by current
      # timezone offset so that highcharts can display the 
      # proper times relative to the local timezone but remain
      # as UTC internally.
      #
      # ideally: highcharts should handle timezones explicitaly
      # instead of just UTC and browser locale only. 
      #
      def adjust_by_utc_offset
        t = self.utc
        t = t + ::Time.zone.utc_offset
        t = t + 1.hour if ::Time.zone.now.dst? # dst hack
        t
      end

    end
  end
end


#
# Injection
# 
class ::Time
  include Extensions::Core::Time
end

module Extensions
  module Core
    module Date
      module ClassMethods
        # 
        # Return today from given timezone
        #
        def today_in_time_zone
          ::Time.zone.now.to_date
        end
      end
    end
  end
end


class ::Date
  extend Extensions::Core::Date::ClassMethods
end

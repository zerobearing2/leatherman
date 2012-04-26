module Extensions
  module Date
    extend ActiveSupport::Concern

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


class Date
  include Extensions::Date
end
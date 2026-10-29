# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.time

# require "java/util/TimeZone"

class TimeTypeUtil
    attr_accessor :NIGHT, :DAY

    def initialize_fields
        @NIGHT = "Night"
        @DAY = "Day"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TimeTypeUtil.instance
    end
    

    def isNight()
        hoursOfDay = self.getHourOfDay()
        return hoursOfDay < 6 || hoursOfDay > 18
    end
    

    def getHourOfDay()
        calendar = Calendar.getInstance()
        return calendar.get(Calendar::HOUR_OF_DAY)
    end
    

    def getNightOrDay()
        return (self.isNight() ? @NIGHT : @DAY)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getHourOfDay(timeInMillis)
        calendar = Calendar.getInstance()
        calendar.setTimeInMillis(timeInMillis)
        return calendar.get(Calendar::HOUR_OF_DAY)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def isNight(timeInMillis)
        hoursOfDay = self.getHourOfDay(timeInMillis)
        return hoursOfDay < 6 || hoursOfDay > 18
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getNightOrDay(timeInMillis)
        return (self.isNight(timeInMillis) ? @NIGHT : @DAY)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Calendar"

class TimeTypeUtil
    @@instance = TimeTypeUtil.new()
end


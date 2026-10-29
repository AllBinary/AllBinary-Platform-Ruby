#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.time


class TimeUtil
    

    def self.getInstance()
        return TimeUtil.instance
    end
    

    def setCalendar(calendar, yearString, monthString, dayString, hourString)
        year = yearString.to_i
        month = monthString.to_i
        day = dayString.to_i
        hour = hourString.to_i
        calendar.set(year, month, day, hour, 0)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setCalendar(calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
        year = yearString.to_i
        month = monthString.to_i
        day = dayString.to_i
        hour = hourString.to_i
        minute = minuteString.to_i
        second = secondString.to_i
        calendar.set(year, month, day, hour, minute, second)
    end
    

    def setExpirationCalendar(calendar, yearsString, monthsString, daysString, hoursString, minutesString, secondsString)
        year = calendar.get(Calendar::YEAR) + yearsString.to_i
        month = calendar.get(Calendar::MONTH) + monthsString.to_i
        day = calendar.get(Calendar::DAY_OF_MONTH) + daysString.to_i
        hour = calendar.get(Calendar::HOUR) + hoursString.to_i
        minute = calendar.get(Calendar::MINUTE) + minutesString.to_i
        second = calendar.get(Calendar::SECOND) + secondsString.to_i
        calendar.set(year, month, day, hour, minute, second)
    end
    

    def getTotalTime(yearString, monthString, dayString, hourString, minuteString, secondString)
        time = TimeUtil.calendar.getTimeInMillis()
        self.setExpirationCalendar(TimeUtil.calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
        timeDelta = TimeUtil.calendar.getTimeInMillis()
        return timeDelta - time
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end

    def self.calendar()
        return defined?(@@calendar) ? @@calendar : nil
    end

    def self.calendar=(value)
        @@calendar = value
    end
end

require "java/util/Calendar"

class TimeUtil
    @@instance = TimeUtil.new()
    @@calendar = Calendar.getInstance()
end


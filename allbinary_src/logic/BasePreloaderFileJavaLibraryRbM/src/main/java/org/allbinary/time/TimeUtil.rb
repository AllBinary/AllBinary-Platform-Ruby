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
    

    def setCalendarWithTime(calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
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
        TimeUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TimeUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.calendar()
        TimeUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@calendar) ? @@calendar : nil
    end

    def self.calendar=(value)
        TimeUtil.java_static_fields unless @java_static_fields_started
        @@calendar = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TimeUtil.new()
            @@calendar = Calendar.getInstance()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TimeUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Calendar, "java/util/Calendar"

begin
    TimeUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


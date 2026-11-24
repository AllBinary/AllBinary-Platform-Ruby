# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.time

# require "java/util/TimeZone"

module ::Org; module Allbinary; module TimePackage

class TimeTypeUtil
    attr_accessor :NIGHT, :DAY

    def jfields_org_allbinary_time_TimeTypeUtil
        @NIGHT = "Night"
        @DAY = "Day"
    end

    def initialize
        jfields_org_allbinary_time_TimeTypeUtil
    end
    

    def self.getInstance()
        return TimeTypeUtil.instance
    end
    

    def isNight_j0()
        hoursOfDay = self.getHourOfDay()
        return hoursOfDay < 6 || hoursOfDay > 18
    end
    

    def getHourOfDay_j0()
        calendar = ::Java::Util::Calendar.getInstance()
        return calendar.get(::Java::Util::Calendar::HOUR_OF_DAY)
    end
    

    def getNightOrDay_j0()
        return (self.isNight() ? @NIGHT : @DAY)
    end
    

    def getHourOfDay_j1(timeInMillis)
        calendar = ::Java::Util::Calendar.getInstance()
        calendar.setTimeInMillis(timeInMillis)
        return calendar.get(::Java::Util::Calendar::HOUR_OF_DAY)
    end

    def getHourOfDay(*java_overload_args)
        return getHourOfDay_j0(*java_overload_args) if java_overload_args.length == 0
        return getHourOfDay_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getHourOfDay takes #{java_overload_args.length} arguments"
    end
    

    def isNight_j1(timeInMillis)
        hoursOfDay = self.getHourOfDay(timeInMillis)
        return hoursOfDay < 6 || hoursOfDay > 18
    end

    def isNight(*java_overload_args)
        return isNight_j0(*java_overload_args) if java_overload_args.length == 0
        return isNight_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method isNight takes #{java_overload_args.length} arguments"
    end
    

    def getNightOrDay_j1(timeInMillis)
        return (self.isNight(timeInMillis) ? @NIGHT : @DAY)
    end

    def getNightOrDay(*java_overload_args)
        return getNightOrDay_j0(*java_overload_args) if java_overload_args.length == 0
        return getNightOrDay_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getNightOrDay takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        TimeTypeUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TimeTypeUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TimeTypeUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TimeTypeUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end

begin
    TimeTypeUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


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


class TimeDelayHelper
    attr_accessor :startTime, :elapsedTimeAtPause, :delay

    def initialize_fields
        @startTime = -1
        @elapsedTimeAtPause = (-9223372036854775808)
        @delay = nil
    end
    

    def initialize(delay)
        initialize_fields
        @delay = delay
        self.setStartTimeTNT()
    end
    

    def isTimeTNT()
        currentTime = (Time.now.to_f * 1000).to_i
        if currentTime - @startTime > @delay
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def isTimeSinceTNT(delay)
        currentTime = (Time.now.to_f * 1000).to_i
        if currentTime - @startTime > delay
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def isTime(currentTime)
        if currentTime - @startTime > @delay
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def isTimeWithoutReset(currentTime)
        if currentTime - @startTime > @delay
            return true
        end
        return false
    end
    

    def isTimeSince(delay, currentTime)
        if currentTime - @startTime > @delay
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def getElapsedTNT()
        return (Time.now.to_f * 1000).to_i - @startTime
    end
    

    def getElapsed(currentTime)
        return currentTime - @startTime
    end
    

    def isElapsed(currentTime, time)
        if self.getElapsed(currentTime) > time
            return true
        else
            return false
        end
    end
    

    def isElapsedTNT(time)
        if self.getElapsedTNT() > time
            return true
        else
            return false
        end
    end
    

    def setStartTime(startTime)
        @startTime = startTime
    end
    

    def getStartTime()
        return @startTime
    end
    

    def setStartTimeTNT()
        @startTime = (Time.now.to_f * 1000).to_i
    end
    

    def pause()
        @elapsedTimeAtPause = self.getElapsedTNT()
        @startTime = 9223372036854775807
    end
    

    def resume()
        if @elapsedTimeAtPause != (-9223372036854775808)
            @startTime = (Time.now.to_f * 1000).to_i + @elapsedTimeAtPause
            @elapsedTimeAtPause = (-9223372036854775808)
            self.setStartTimeTNT()
            return true
        end
        return false
    end
    

    def toStringAt(currentTime)
        elapsed = self.getElapsed(currentTime)
        if elapsed > 0
            commonLabels = CommonLabels.getInstance()
            elapsedAsString = (elapsed).to_s
            return StringMaker.new().append(commonLabels.START).appendlong(@startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).to_s
        else
            return StringUtil.getInstance().EMPTY_STRING
        end
    end
    

    def toString()
        currentTime = (Time.now.to_f * 1000).to_i
        elapsed = self.getElapsed(currentTime)
        if elapsed > 0
            commonLabels = CommonLabels.getInstance()
            elapsedAsString = (elapsed).to_s
            return StringMaker.new().append(commonLabels.START).appendlong(@startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).to_s
        else
            return StringUtil.getInstance().EMPTY_STRING
        end
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "java/lang/System"


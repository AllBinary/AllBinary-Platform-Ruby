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
# package org.allbinary.game.layer.hud


class LapInfo
    attr_accessor :numberOfLaps, :totalLaps

    def initialize_fields
        @numberOfLaps = nil
        @totalLaps = nil
    end
    

    def initialize(totalLaps)
        initialize_fields
        @totalLaps = totalLaps
        @numberOfLaps = 1
    end
    

    def add()
        @numberOfLaps += 1
    end
    

    def getCurrentLap()
        return @numberOfLaps
    end
    

    def getTotalLaps()
        return @totalLaps
    end
    

    def isDone()
        if @numberOfLaps >= @totalLaps
            return true
        end
        return false
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("isDone: ")
        stringBuffer.appendboolean(self.isDone())
        stringBuffer.append(" CurrentLap: ")
        stringBuffer.appendint(self.getCurrentLap())
        stringBuffer.append(" Total Laps: ")
        stringBuffer.appendint(self.getTotalLaps())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"

class LapInfo
    NULL_LAP_INFO = LapInfo.new(-1)
end


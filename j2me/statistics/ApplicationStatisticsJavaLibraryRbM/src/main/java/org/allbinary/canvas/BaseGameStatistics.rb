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
# package org.allbinary.canvas


class BaseGameStatistics
    attr_accessor :timeDelayHelper, :updateDelayHelper, :totalRefreshes, :totalFrames, :gameTickTimeDelayHelper, :DEFAULT_SCALE_FACTOR, :NOT, :EMPTY_STRING, :STRING_ARRAY, :SPACE_CHAR, :PLUS_CHAR, :X_CHAR, :CHAR_ARRAY, :primitiveLongSingleton

    def initialize_fields
        @timeDelayHelper = TimeDelayHelper.new(2147483647)
        @updateDelayHelper = TimeDelayHelper.new(2000)
        @totalRefreshes = 0
        @totalFrames = 0
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        @DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
        @NOT = "Not enough Time to Calculate"
        @EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        @STRING_ARRAY = [" Total Time: ", @EMPTY_STRING, " Total Frames: ", @EMPTY_STRING, " Frames/10 Sec: ", @EMPTY_STRING, " Total Paints: ", @EMPTY_STRING, " Paints/10 Sec: ", @EMPTY_STRING]
        @SPACE_CHAR = " "
        @PLUS_CHAR = "+"
        @X_CHAR = "X"
        @CHAR_ARRAY = [["F", "r", "a", "m", "e", "s", "/", "1", "0", " ", "S", "e", "c", ":"], ["X", "X"], ["P", "a", "i", "n", "t", "s", "/", "1", "0", " ", "S", "e", "c", ":"], ["X", "X"]]
        @primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def init()
        @timeDelayHelper.setStartTimeTNT()
        @totalRefreshes = 0
        @totalFrames = 0
    end
    

    def add(string)
    end
    

    def process()
    end
    

    def nextFrame()
        @totalFrames += 1
    end
    

    def nextRefresh()
        @totalRefreshes += 1
    end
    

    def getRefreshRate()
        elapsed = @timeDelayHelper.getElapsed(@gameTickTimeDelayHelper.startTime)
        if elapsed > 1
            time = ((((@totalRefreshes / (elapsed >> @DEFAULT_SCALE_FACTOR))).to_i + 32768) % 65536 - 32768)
            return time
        else
            return 0
        end
    end
    

    def getTimeDelayHelper()
        return @timeDelayHelper
    end
    

    def to2DCharArray()
        totalTime = @timeDelayHelper.getElapsed(@gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime >> @DEFAULT_SCALE_FACTOR)
        if totalTime > 0 && @updateDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
            framesPerSec = (@totalFrames / totalTime)
            if framesPerSec < 10
                @CHAR_ARRAY[1][0] = @SPACE_CHAR
                @CHAR_ARRAY[1][1] = @primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec]
            elsif framesPerSec < 100
                tens = framesPerSec / 10
                removeTens = tens * 10
                @CHAR_ARRAY[1][0] = @primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens]
                @CHAR_ARRAY[1][1] = @primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec - removeTens]
            else
                @CHAR_ARRAY[1][0] = @PLUS_CHAR
                @CHAR_ARRAY[1][1] = @PLUS_CHAR
            end
            refreshesPerSec = (@totalRefreshes / totalTime)
            if refreshesPerSec < 10
                @CHAR_ARRAY[3][0] = @X_CHAR
                @CHAR_ARRAY[3][1] = @primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec]
            elsif refreshesPerSec < 100
                tens = refreshesPerSec / 10
                removeTens = tens * 10
                @CHAR_ARRAY[3][0] = @primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec / 10]
                @CHAR_ARRAY[3][1] = @primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec - removeTens]
            else
                @CHAR_ARRAY[3][0] = @PLUS_CHAR
                @CHAR_ARRAY[3][1] = @PLUS_CHAR
            end
        end
        return @CHAR_ARRAY
    end
    

    def toStringArray()
        totalTime = @timeDelayHelper.getElapsed(@gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime / 10000)
        if totalTime > 0
            @STRING_ARRAY[1] = (totalTime).to_s
            @STRING_ARRAY[3] = (@totalFrames).to_s
            @STRING_ARRAY[5] = (@totalFrames / totalTime).to_s
            @STRING_ARRAY[7] = (@totalRefreshes).to_s
            @STRING_ARRAY[9] = (@totalRefreshes / totalTime).to_s
        else
            string = @EMPTY_STRING
            @STRING_ARRAY[1] = string
            @STRING_ARRAY[3] = string
            @STRING_ARRAY[5] = string
            @STRING_ARRAY[7] = string
            @STRING_ARRAY[9] = string
        end
        return @STRING_ARRAY
    end
    

    def toStringAt(totalTime)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@STRING_ARRAY[0])
        stringBuffer.appendlong(totalTime)
        stringBuffer.append(@STRING_ARRAY[2])
        stringBuffer.appendlong(@totalFrames)
        stringBuffer.append(@STRING_ARRAY[4])
        stringBuffer.appendlong(@totalFrames / totalTime)
        if @totalRefreshes > 0
            stringBuffer.append(@STRING_ARRAY[6])
            stringBuffer.appendlong(@totalRefreshes)
            stringBuffer.append(@STRING_ARRAY[8])
            stringBuffer.appendlong(@totalRefreshes / totalTime)
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        end
        return stringBuffer.to_s
    end
    

    def toString()
        totalTime = @timeDelayHelper.getElapsed(@gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime / 1000)
        if totalTime > 0
            return self.toStringAt(totalTime)
        else
            return @NOT
        end
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/math/PrimitiveLongSingleton"
require "org/allbinary/logic/math/ScaleFactorFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"


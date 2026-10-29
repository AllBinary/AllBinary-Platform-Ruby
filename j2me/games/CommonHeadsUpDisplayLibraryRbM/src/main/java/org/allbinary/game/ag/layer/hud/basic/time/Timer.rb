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
# package org.allbinary.game.ag.layer.hud.basic.time


class Timer
    attr_accessor :startTime, :hundredthTime, :maxTime, :modifier, :hundrethsString, :totalDigits, :primitiveLongUtil, :MAX, :gameTickTimeDelayHelper

    def initialize_fields
        @startTime = -1
        @hundredthTime = 0
        @maxTime = nil
        @modifier = 0
        @hundrethsString = PrimitiveLongSingleton.getInstance().ZERO
        @totalDigits = 1
        @primitiveLongUtil = nil
        @MAX = ["L", "O", "L"]
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(maxTime)
        initialize_fields
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime)
        @maxTime = maxTime
    end
    

    def start()
        @hundredthTime = 0
        @startTime = @gameTickTimeDelayHelper.startTime
    end
    

    def get()
        return @hundredthTime
    end
    

    def update()
        lastLowerTime = @hundredthTime
        currentTime = ((@modifier + @gameTickTimeDelayHelper.startTime) - @startTime)
        if currentTime < 0
            currentTime = 0
        end
        @hundredthTime = currentTime / 100
        if @hundredthTime >= @maxTime
            if @startTime > 0
                @hundrethsString = @MAX
            end
        elsif lastLowerTime != @hundredthTime
            @hundrethsString = @primitiveLongUtil.getCharArray(@hundredthTime)
            @totalDigits = @primitiveLongUtil.getCurrentTotalDigits()
        end
    end
    

    def reduce(value)
        @modifier -= value
    end
    

    def add(value)
        @modifier += value
    end
    

    def getTimeChars()
        return @hundrethsString
    end
    

    def getCurrentTotalDigits()
        return @totalDigits
    end
end

require "org/allbinary/logic/math/PrimitiveLongSingleton"
require "org/allbinary/logic/math/PrimitiveLongUtil"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"


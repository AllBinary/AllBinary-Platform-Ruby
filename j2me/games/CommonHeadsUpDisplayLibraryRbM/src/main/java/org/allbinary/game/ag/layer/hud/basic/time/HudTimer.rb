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


module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module TimePackage

class HudTimer
    attr_accessor :startTime, :hundredthTime, :maxTime, :modifier, :hundrethsString, :totalDigits, :primitiveLongUtil, :MAX, :gameTickTimeDelayHelper

    def jfields_org_allbinary_game_ag_layer_hud_basic_time_HudTimer
        @startTime = -1
        @hundredthTime = 0 unless instance_variable_defined?(:@hundredthTime)
        @maxTime = nil unless instance_variable_defined?(:@maxTime)
        @modifier = 0 unless instance_variable_defined?(:@modifier)
        @hundrethsString = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongSingleton.getInstance().ZERO
        @totalDigits = 1
        @primitiveLongUtil = nil unless instance_variable_defined?(:@primitiveLongUtil)
        @MAX = ["L", "O", "L"]
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(maxTime)
        jfields_org_allbinary_game_ag_layer_hud_basic_time_HudTimer
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(maxTime)
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

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongSingleton, "org/allbinary/logic/math/PrimitiveLongSingleton" unless const_defined?(:PrimitiveLongSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end

end; end; end; end; end; end; end; end


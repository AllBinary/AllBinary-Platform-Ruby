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
# package org.allbinary.business.advertisement


class BottomLimiter
    attr_accessor :bottom, :deltaY, :lower, :higher

    def initialize_fields
        @bottom = 0
        @deltaY = 0
        @lower = 0
        @higher = 0
    end
    

    def self.getInstance()
        return BottomLimiter.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def init(lower, higher)
        @lower = lower
        @higher = higher
    end
    

    def update()
        displayInfo = DisplayInfoSingleton.getInstance()
        gameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
        if gameAdState.isShowingAt()
            @deltaY = @higher
        else
            @deltaY = @lower
        end
        @bottom = displayInfo.getLastHeight() - @deltaY
    end
    

    def getDeltaY()
        return @deltaY
    end
    

    def getBottom()
        return @bottom
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/GameAdState"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/business/advertisement/GameAdStateFactory"

class BottomLimiter
    @@instance = BottomLimiter.new()
end


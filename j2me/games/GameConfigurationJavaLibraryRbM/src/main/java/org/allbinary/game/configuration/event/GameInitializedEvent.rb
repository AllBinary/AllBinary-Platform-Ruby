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
# package org.allbinary.game.configuration.event

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class GameInitializedEvent < AllBinaryEventObject
    attr_accessor :resourceLoadingLevel, :level

    def initialize_fields
        @resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL
        @level = 0
    end
    

    def initialize(anyType)
        super(anyType)
        initialize_fields
    end
    

    def setLevel(level)
        @level = level
        @resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL
    end
    

    def getLevel()
        return @level
    end
    

    def setResourceLoadingLevel(resourceLoadingLevel)
        @resourceLoadingLevel = resourceLoadingLevel
        @level = @resourceLoadingLevel.getLevel()
    end
    

    def getResourceLoadingLevel()
        return @resourceLoadingLevel
    end
end

require "org/allbinary/game/resource/ResourceLoadingLevel"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"


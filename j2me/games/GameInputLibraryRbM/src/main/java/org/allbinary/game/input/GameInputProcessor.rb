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
# package org.allbinary.game.input


class GameInputProcessor
    

    def self.getInstance()
        return GameInputProcessor.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def processEvent(allbinaryLayerManager, gameKeyEvent)
    end
    

    # throws Exception
    def processReleasedEvent(allbinaryLayerManager, gameKeyEvent)
    end
    

    # throws Exception
    def processAnalog(allbinaryLayerManager, gameKeyEvent, analogValue)
    end
    

    # throws Exception
    def process(allbinaryLayerManager, keyAsInteger)
    end
    

    # throws Exception
    def processReleased(allbinaryLayerManager, keyAsInteger)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/layer/AllBinaryLayerManager"

class GameInputProcessor
    @@instance = GameInputProcessor.new()
end


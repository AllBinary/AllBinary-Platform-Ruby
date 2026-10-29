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
# package org.allbinary.game.midlet

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class DemoGameMidletEvent < AllBinaryEventObject
    attr_accessor :demoGameMidletState

    def initialize_fields
        @demoGameMidletState = nil
    end
    

    def initialize(anyType, demoGameMidletState)
        super(anyType)
        initialize_fields
        @demoGameMidletState = demoGameMidletState
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    

    def setDemoGameMidletState(demoGameMidletState)
        @demoGameMidletState = demoGameMidletState
    end
    

    def getDemoGameMidletState()
        return @demoGameMidletState
    end
end

require "org/allbinary/game/midlet/DemoGameMidletState"


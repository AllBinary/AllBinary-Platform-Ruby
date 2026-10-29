# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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

require "org/allbinary/game/input/RTSPlayerGameInputProcessor"

class RTSPlayerFireGameInputProcessor < RTSPlayerGameInputProcessor
    

    def initialize(rtsPlayerGameInput)
        super(rtsPlayerGameInput)
    end
    

    # throws Exception
    def processEvent(allbinaryLayerManager, gameKeyEvent)
        @rtsPlayerGameInput.addForRemoval(gameKeyEvent)
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/game/input/RTSPlayerGameInput"


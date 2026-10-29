# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer

require "org/allbinary/game/layer/RTSPlayerLayerInterface"

module AdvancedRTSPlayerLayerInterface
    include RTSPlayerLayerInterface
    

    def getAdvancedPlayerOwnedRTSLayers()
        raise NotImplementedError
    end
    

    def isLocalPlayer()
        raise NotImplementedError
    end
    

    def getGameType()
        raise NotImplementedError
    end
    

    def getDecalBasicColor()
        raise NotImplementedError
    end
end

require "org/allbinary/game/GameType"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers"


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
# package org.allbinary.game.layer

require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHudCompositeInterface"
require "org/allbinary/game/input/BuildMenuCompositeInterface"
require "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"
require "org/allbinary/game/tick/TickableInterface"
require "org/allbinary/game/layer/PathFindingLayerInterface"

module RTSPlayerLayerInterface
    include GameNotificationHudCompositeInterface
    include BuildMenuCompositeInterface
    include PlayerGameInputCompositeInterface
    include DestroyedEventListenerInterface
    include TickableInterface
    include PathFindingLayerInterface
    

    def getCapital()
        raise NotImplementedError
    end
    

    def getRTSFormInput()
        raise NotImplementedError
    end
    

    def add(sound)
        raise NotImplementedError
    end
    

    def getPlayerOwnedRTSLayers()
        raise NotImplementedError
    end
    

    def implmentsArtificialIntelligenceCompositeInterface()
        raise NotImplementedError
    end
end

require "org/allbinary/game/input/form/RTSFormInput"
require "org/allbinary/game/layer/capital/Capital"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/game/layer/PlayerOwnedRTSLayers"


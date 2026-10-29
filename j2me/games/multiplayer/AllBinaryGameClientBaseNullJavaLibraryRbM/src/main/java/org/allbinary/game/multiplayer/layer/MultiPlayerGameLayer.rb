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
# package org.allbinary.game.multiplayer.layer

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayerInterface"

class MultiPlayerGameLayer < CollidableDestroyableDamageableLayer
    include MultiPlayerGameLayerInterface
    

    def initialize(remoteInfo, groupInterface, name, layerInfo, viewPosition)
        super(groupInterface, name, layerInfo, viewPosition)
    end
    

    def getMultiplayerBehavior()
        return MultiplayerBehavior::NULL_MULTIPLAYER_BEHAVIOR
    end
    

    def setPingInfo(show)
    end
    

    def setFiring(firing)
    end
    

    def getFiring()
        return 0
    end
end

require "org/allbinary/game/identification/Group"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/multiplayer/layer/MultiplayerBehavior"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"


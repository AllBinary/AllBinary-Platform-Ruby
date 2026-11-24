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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayerInterface"

module ::Org; module Allbinary; module Game; module Multiplayer; module Layer

class MultiPlayerGameLayer < ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer
    include MultiPlayerGameLayerInterface
    

    def initialize(remoteInfo, groupInterface, name, layerInfo, viewPosition)
        super(groupInterface, name, layerInfo, viewPosition)
    end
    

    def getMultiplayerBehavior()
        return MultiplayerBehavior::NULL_MULTIPLAYER_BEHAVIOR
    end
    java_overload :getMultiplayerBehavior, 0
    

    def setPingInfo(show)
    end
    java_overload :setPingInfo, 1
    

    def setFiring(firing)
    end
    java_overload :setFiring, 1
    

    def getFiring()
        return 0
    end
    java_overload :getFiring, 0
end

module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :MultiplayerBehavior, "org/allbinary/game/multiplayer/layer/MultiplayerBehavior" unless const_defined?(:MultiplayerBehavior, false)
autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false)

end; end; end; end; end


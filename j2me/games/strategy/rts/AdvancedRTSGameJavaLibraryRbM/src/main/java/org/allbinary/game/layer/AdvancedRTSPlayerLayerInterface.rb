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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"

module ::Org; module Allbinary; module Game; module Layer

module AdvancedRTSPlayerLayerInterface
    include RTSPlayerLayerInterface
    

    def getAdvancedPlayerOwnedRTSLayers()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getAdvancedPlayerOwnedRTSLayers, 0
    

    def isLocalPlayer()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isLocalPlayer, 0
    

    def getGameType()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getGameType, 0
    

    def getDecalBasicColor()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDecalBasicColor, 0
end

module ::Org; module Allbinary; module Game; autoload :GameType, "org/allbinary/game/GameType" unless const_defined?(:GameType, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :AdvancedPlayerOwnedRTSLayers, "org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers" unless const_defined?(:AdvancedPlayerOwnedRTSLayers, false)

end; end; end; end


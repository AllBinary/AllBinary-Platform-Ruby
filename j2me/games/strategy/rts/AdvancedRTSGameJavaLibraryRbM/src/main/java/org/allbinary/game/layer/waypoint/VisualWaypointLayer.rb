# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.waypoint

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/waypoint/WaypointLayer"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class VisualWaypointLayer < WaypointLayer
    

    def initialize(remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
        super(remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
    end
    

    def createHudPaintable()
        rtsLayerHudPaintable = WaypointInfoHudPaintableSingleton.getInstance()
        rtsLayerHudPaintable.setBasicColorP(@allBinaryGameLayerManagerP.getForegroundBasicColor())
        rtsLayerHudPaintable.setRtsLayer(self)
        return rtsLayerHudPaintable
    end
    java_overload :createHudPaintable, 0
    

    def getHudPaintable()
        rtsLayerHudPaintable = WaypointInfoHudPaintableSingleton.getInstance()
        return rtsLayerHudPaintable
    end
    java_overload :getHudPaintable, 0
end

module ::Org; module Allbinary; module Game; module Layer; autoload :SelectionHudPaintable, "org/allbinary/game/layer/SelectionHudPaintable" unless const_defined?(:SelectionHudPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" unless const_defined?(:ProceduralAnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
autoload :WaypointInfoHudPaintable, "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable" unless const_defined?(:WaypointInfoHudPaintable, false)
autoload :WaypointInfoHudPaintableSingleton, "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintableSingleton" unless const_defined?(:WaypointInfoHudPaintableSingleton, false)

end; end; end; end; end


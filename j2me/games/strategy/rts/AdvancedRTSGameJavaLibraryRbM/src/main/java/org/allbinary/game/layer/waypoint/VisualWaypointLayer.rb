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

require "org/allbinary/game/layer/waypoint/WaypointLayer"

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
    

    def getHudPaintable()
        rtsLayerHudPaintable = WaypointInfoHudPaintableSingleton.getInstance()
        return rtsLayerHudPaintable
    end
end

require "org/allbinary/game/layer/SelectionHudPaintable"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable"
require "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintableSingleton"


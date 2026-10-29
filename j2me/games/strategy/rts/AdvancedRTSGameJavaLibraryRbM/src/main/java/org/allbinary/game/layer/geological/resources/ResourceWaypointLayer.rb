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
# package org.allbinary.game.layer.geological.resources

require "org/allbinary/game/layer/waypoint/WaypointLayer"

class ResourceWaypointLayer < WaypointLayer
    

    def initialize(remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
        super(remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
    end
    

    def createHudPaintable()
        rtsLayerHudPaintable = GeologicalResourceInfoHudPaintableSingleton.getInstance()
        rtsLayerHudPaintable.setBasicColorP(@allBinaryGameLayerManagerP.getForegroundBasicColor())
        rtsLayerHudPaintable.setRtsLayer(self)
        return rtsLayerHudPaintable
    end
    

    def getHudPaintable()
        rtsLayerHudPaintable = GeologicalResourceInfoHudPaintableSingleton.getInstance()
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
require "org/allbinary/game/layer/geological/resources/GeologicalResourceInfoHudPaintable"
require "org/allbinary/game/layer/geological/resources/GeologicalResourceInfoHudPaintableSingleton"


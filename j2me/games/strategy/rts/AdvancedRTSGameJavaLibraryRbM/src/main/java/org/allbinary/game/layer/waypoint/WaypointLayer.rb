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
# package org.allbinary.game.layer.waypoint

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"

class WaypointLayer < AdvancedRTSGameLayer
    

    def initialize(remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
        super(remoteInfo, parentLayer, AdvancedRTSProperties.createProperties(), groupInterface, rootName, name, Health.new(1000), NullRTSFormInputFactory.getInstance(), animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition.new())
        self.setCollidableInferface(CollidableWaypointBehavior.new(true))
        self.getWaypointBehavior().setWaypoint(Waypoint.new(self, AttackSound.getInstance()))
        self.setAnimationInterface(@indexedButShouldBeRotationAnimationInterface)
    end
    

    def construct(rtsPlayerLayerInterface)
        @percentCompleteP = 100
        self.initVisibility(rtsPlayerLayerInterface)
    end
    

    def paint(graphics)
        if self.isVisible()
            super(graphics)
        end
    end
    

    def processTick(allBinaryLayerManager)
        begin
            @indexedButShouldBeRotationAnimationInterface.nextFrame()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "processTick", e)
        end
    end
    

    def damage(damage, damageType)
    end
    

    # throws Exception
    def getDamage(damageType)
        return 0
    end
    

    # throws Exception
    def setDestroyed(destroyed)
        super(destroyed)
        if self.isDestroyed()
            WaypointCellPositionHistory.getInstance().removeLayer(self)
        end
    end
    

    def getType()
        return WaypointLayer.getStaticType()
    end
    

    def self.getStaticType()
        return 4
    end
    

    def isSelfUpgradeable()
        return false
    end
end

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/game/health/Health"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/input/form/NullRTSFormInputFactory"
require "org/allbinary/game/layer/AdvancedRTSProperties"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/view/TileLayerPositionIntoViewPosition"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/media/audio/AttackSound"
require "org/allbinary/game/layer/waypoint/CollidableWaypointBehavior"
require "org/allbinary/game/layer/waypoint/Waypoint"
require "org/allbinary/game/layer/waypoint/WaypointCellPositionHistory"


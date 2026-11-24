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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class WaypointLayer < ::Org::Allbinary::Game::Layer::AdvancedRTSGameLayer
    

    def initialize(remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
        super(remoteInfo, parentLayer, ::Org::Allbinary::Game::Layer::AdvancedRTSProperties.createProperties(), groupInterface, rootName, name, ::Org::Allbinary::Game::Health::Health.new(1000), ::Org::Allbinary::Game::Input::Form::NullRTSFormInputFactory.getInstance(), animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, ::Org::Allbinary::Game::View::TileLayerPositionIntoViewPosition.new())
        self.setCollidableInferface(CollidableWaypointBehavior.new(true))
        self.getWaypointBehavior().setWaypoint(Waypoint.new(self, ::Org::Allbinary::Media::Audio::AttackSound.getInstance()))
        self.setAnimationInterface(@indexedButShouldBeRotationAnimationInterface)
    end
    

    def construct(rtsPlayerLayerInterface)
        @percentCompleteP = 100
        self.initVisibility(rtsPlayerLayerInterface)
    end
    java_overload :construct, 1
    

    def paint(graphics)
        if self.isVisible()
            WaypointLayer.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        end
    end
    java_overload :paint, 1
    

    def processTick(allBinaryLayerManager)
        begin
            @indexedButShouldBeRotationAnimationInterface.nextFrame()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "processTick", e)
        end
    end
    java_overload :processTick, 1
    

    def damage(damage, damageType)
    end
    java_overload :damage, 2
    

    # throws Exception
    def getDamage(damageType)
        return 0
    end
    java_overload :getDamage, 1
    

    # throws Exception
    def setDestroyed(destroyed)
        WaypointLayer.superclass.java_super_method(:setDestroyed, 1).bind(self).call(destroyed)
        if self.isDestroyed()
            WaypointCellPositionHistory.getInstance().removeLayer(self)
        end
    end
    java_overload :setDestroyed, 1
    

    def getType()
        return WaypointLayer.getStaticType()
    end
    java_overload :getType, 0
    

    def self.getStaticType()
        return 4
    end
    

    def isSelfUpgradeable()
        return false
    end
    java_overload :isSelfUpgradeable, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" unless const_defined?(:ProceduralAnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :NullRTSFormInputFactory, "org/allbinary/game/input/form/NullRTSFormInputFactory" unless const_defined?(:NullRTSFormInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSProperties, "org/allbinary/game/layer/AdvancedRTSProperties" unless const_defined?(:AdvancedRTSProperties, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module View; autoload :TileLayerPositionIntoViewPosition, "org/allbinary/game/view/TileLayerPositionIntoViewPosition" unless const_defined?(:TileLayerPositionIntoViewPosition, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :AttackSound, "org/allbinary/media/audio/AttackSound" unless const_defined?(:AttackSound, false); end; end; end; end
autoload :CollidableWaypointBehavior, "org/allbinary/game/layer/waypoint/CollidableWaypointBehavior" unless const_defined?(:CollidableWaypointBehavior, false)
autoload :Waypoint, "org/allbinary/game/layer/waypoint/Waypoint" unless const_defined?(:Waypoint, false)
autoload :WaypointCellPositionHistory, "org/allbinary/game/layer/waypoint/WaypointCellPositionHistory" unless const_defined?(:WaypointCellPositionHistory, false)

end; end; end; end; end


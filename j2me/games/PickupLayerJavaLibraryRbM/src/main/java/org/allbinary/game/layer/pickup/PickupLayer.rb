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
# package org.allbinary.game.layer.pickup

require "java/lang/JavaOverload"
require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
require "org/allbinary/game/layer/pickup/PickupableInterface"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class PickupLayer < ::Org::Allbinary::Game::Multiplayer::Layer::MultiPlayerGameLayer
    include PickedUpLayerInterface
    include PickupableInterface
    attr_accessor :pickedUpLayerInterfaceFactoryInterface, :destroyed, :animationInterface

    def jfields_org_allbinary_game_layer_pickup_PickupLayer
        @pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
        @destroyed = false unless instance_variable_defined?(:@destroyed)
        @animationInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def initialize(name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition)
        super(remoteInfo, ::Org::Allbinary::Game::Identification::BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        jfields_org_allbinary_game_layer_pickup_PickupLayer
        self.setCollidableInferface(::Org::Allbinary::Game::Collision::CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior())
        self.setLayerWidth(10)
        self.setLayerHeight(10)
        self.init(pickedUpLayerInterfaceFactoryInterface, animationInterface)
    end
    

    def init(pickedUpLayerInterfaceFactoryInterface, animationInterface)
        @pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface
        @animationInterface = animationInterface
        self.setDestroyed(false)
    end
    java_overload :init, 2
    

    def initXYZ(x, y, z)
        self.setPosition(x, y, z)
    end
    java_overload :initXYZ, 3
    

    def paint(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @animationInterface.paintXY(graphics, viewX, viewY)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3)
    end
    java_overload :paintThreed, 1
    

    def getPickedUpLayerInterfaceFactoryInterface()
        return @pickedUpLayerInterfaceFactoryInterface
    end
    java_overload :getPickedUpLayerInterfaceFactoryInterface, 0
    

    def setPickedUp()
        self.setDestroyed(true)
    end
    java_overload :setPickedUp, 0
    

    def isDestroyed()
        return @destroyed
    end
    java_overload :isDestroyed, 0
    

    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            ::Org::Allbinary::Game::Combat::Destroy::DestroyedLayerProcessor.getInstance().add(self)
        end
    end
    java_overload :setDestroyed, 1
    

    def damage(damage, damageType)
    end
    java_overload :damage, 2
    

    def getDamage(damageType)
        return 0
    end
    java_overload :getDamage, 1
    

    # throws Exception
    def set(gl)
        openGLSurfaceChangedInterface = @animationInterface
        openGLSurfaceChangedInterface.set(gl)
    end
    java_overload :set, 1
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Collision; autoload :CollidableAlwaysPickupNeverCollideBehaviorFactory, "org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory" unless const_defined?(:CollidableAlwaysPickupNeverCollideBehaviorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; autoload :DestroyedLayerProcessor, "org/allbinary/game/combat/destroy/DestroyedLayerProcessor" unless const_defined?(:DestroyedLayerProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory" unless const_defined?(:BasicGroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLSurfaceChangedInterface, "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface" unless const_defined?(:OpenGLSurfaceChangedInterface, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" unless const_defined?(:CountedPickedUpLayerInterfaceFactory, false)
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false)

end; end; end; end; end


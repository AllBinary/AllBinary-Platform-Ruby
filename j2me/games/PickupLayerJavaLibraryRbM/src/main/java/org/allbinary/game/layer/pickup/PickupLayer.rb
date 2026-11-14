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

require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
require "org/allbinary/game/layer/pickup/PickupableInterface"

class PickupLayer < MultiPlayerGameLayer
    include PickedUpLayerInterface
    include PickupableInterface
    attr_accessor :pickedUpLayerInterfaceFactoryInterface, :destroyed, :animationInterface

    def initialize_fields
        @pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY
        @destroyed = false
        @animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def initialize(name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition)
        super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        initialize_fields
        self.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior())
        self.setLayerWidth(10)
        self.setLayerHeight(10)
        self.init(pickedUpLayerInterfaceFactoryInterface, animationInterface)
    end
    

    def init(pickedUpLayerInterfaceFactoryInterface, animationInterface)
        @pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface
        @animationInterface = animationInterface
        self.setDestroyed(false)
    end
    

    def initXYZ(x, y, z)
        self.setPosition(x, y, z)
    end
    

    def paint(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @animationInterface.paintXY(graphics, viewX, viewY)
    end
    

    def paintThreed(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3)
    end
    

    def getPickedUpLayerInterfaceFactoryInterface()
        return @pickedUpLayerInterfaceFactoryInterface
    end
    

    def setPickedUp()
        self.setDestroyed(true)
    end
    

    def isDestroyed()
        return @destroyed
    end
    

    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            DestroyedLayerProcessor.getInstance().add(self)
        end
    end
    

    def damage(damage, damageType)
    end
    

    def getDamage(damageType)
        return 0
    end
    

    # throws Exception
    def set(gl)
        openGLSurfaceChangedInterface = @animationInterface
        openGLSurfaceChangedInterface.set(gl)
    end
end

autoload :GL, "javax/microedition/khronos/opengles/GL"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :CollidableAlwaysPickupNeverCollideBehaviorFactory, "org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory"
autoload :DestroyedLayerProcessor, "org/allbinary/game/combat/destroy/DestroyedLayerProcessor"
autoload :BasicGroupFactory, "org/allbinary/game/identification/BasicGroupFactory"
autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :OpenGLSurfaceChangedInterface, "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"
autoload :CountedPickedUpLayerInterfaceFactory, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory"
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"


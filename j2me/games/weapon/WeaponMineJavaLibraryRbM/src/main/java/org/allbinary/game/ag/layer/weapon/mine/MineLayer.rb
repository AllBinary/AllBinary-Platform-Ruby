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
# package org.allbinary.game.ag.layer.weapon.mine

require "org/allbinary/game/layer/weapon/SimpleWeaponLayer"

class MineLayer < SimpleWeaponLayer
    attr_accessor :viewPositionEventHandler

    def initialize_fields
        @viewPositionEventHandler = ViewPositionEventHandler.getInstance()
    end
    

    def initialize(viewPosition)
        super(MineLayer::NAME, RemoteInfo::REMOTE_INFO, -1, NoMovementFactory.getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().RESOURCE).getInstance(0), SimpleWeaponLayer.createDestroyed(), Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition)
        initialize_fields
    end
    

    def initXYZ(x, y, z)
        self.setPosition(x + 5, y + 5, z)
        @viewPositionEventHandler.addListener(self)
        SecondaryPlayerQueueFactory.getInstance().add(DropWeaponSound.getInstance())
    end
    

    def damage(damage, damageType)
        @totalDamage = self.getInitDamage() + 1
    end
    

    def getDamage(damageType)
        super(damageType)
        return self.getInitDamage()
    end
    

    def setDestroyed(destroyed)
        super(destroyed)
        if self.isDestroyed()
            @viewPositionEventHandler.removeListener(self)
        end
    end
end

require "org/allbinary/ag/weapon/media/audio/DropWeaponSound"
require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/physics/movement/NoMovementFactory"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/view/event/ViewPositionEventHandler"
require "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources"

class MineLayer
    NAME = "MineLayer"
end


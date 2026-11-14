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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "MineLayer")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MineLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

autoload :DropWeaponSound, "org/allbinary/ag/weapon/media/audio/DropWeaponSound"
autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
autoload :NoMovementFactory, "org/allbinary/physics/movement/NoMovementFactory"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"
autoload :ViewPositionEventHandler, "org/allbinary/view/event/ViewPositionEventHandler"
autoload :MineWeaponResources, "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources"

begin
    MineLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


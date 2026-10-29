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
# package org.allbinary.game.layer.weapon

require "org/allbinary/game/layer/weapon/WeaponLayer"

class SimpleWeaponLayer < WeaponLayer
    

    # throws Exception
    def self.createDestroyed()
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getProcedural(ExplosionResources.getInstance().THIRD_EXPLOSION_RESOURCE).getInstanceAnimation(NullIndexedAnimationFactory.getFactoryInstance().getInstance(0))
    end
    

    def initialize(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        super(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        self.setCollidableInferface(CollidableWeaponBehavior.new(true))
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/animation/NullIndexedAnimationFactory"
require "org/allbinary/game/combat/damage/ExplosionResources"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/physics/movement/Movement"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/layer/weapon/CollidableWeaponBehavior"


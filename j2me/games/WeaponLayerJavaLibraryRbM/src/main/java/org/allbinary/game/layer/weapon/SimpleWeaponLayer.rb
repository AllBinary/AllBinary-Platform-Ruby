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

autoload :Animation, "org/allbinary/animation/Animation"
autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :NullIndexedAnimationFactory, "org/allbinary/animation/NullIndexedAnimationFactory"
autoload :ExplosionResources, "org/allbinary/game/combat/damage/ExplosionResources"
autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :Movement, "org/allbinary/physics/movement/Movement"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"
autoload :CollidableWeaponBehavior, "org/allbinary/game/layer/weapon/CollidableWeaponBehavior"


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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/weapon/WeaponLayer"

module ::Org; module Allbinary; module Game; module Layer; module Weapon

class SimpleWeaponLayer < WeaponLayer
    

    # throws Exception
    def self.createDestroyed()
        return ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getProcedural(::Org::Allbinary::Game::Combat::Damage::ExplosionResources.getInstance().THIRD_EXPLOSION_RESOURCE).getInstanceAnimation(::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance().getInstance(0))
    end
    

    def initialize(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        super(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        self.setCollidableInferface(CollidableWeaponBehavior.new(true))
    end
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullIndexedAnimationFactory, "org/allbinary/animation/NullIndexedAnimationFactory" unless const_defined?(:NullIndexedAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :ExplosionResources, "org/allbinary/game/combat/damage/ExplosionResources" unless const_defined?(:ExplosionResources, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Physics; module Movement; autoload :Movement, "org/allbinary/physics/movement/Movement" unless const_defined?(:Movement, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :CollidableWeaponBehavior, "org/allbinary/game/layer/weapon/CollidableWeaponBehavior" unless const_defined?(:CollidableWeaponBehavior, false)

end; end; end; end; end


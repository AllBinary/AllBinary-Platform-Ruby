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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/weapon/SimpleWeaponLayer"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Weapon; module Mine

class MineLayer < ::Org::Allbinary::Game::Layer::Weapon::SimpleWeaponLayer
    attr_accessor :viewPositionEventHandler

    def jfields_org_allbinary_game_ag_layer_weapon_mine_MineLayer
        @viewPositionEventHandler = ::Org::Allbinary::View::Event::ViewPositionEventHandler.getInstance()
    end
    

    def initialize(viewPosition)
        super(MineLayer::NAME, ::Org::Allbinary::Game::Multiplayer::Layer::RemoteInfo::REMOTE_INFO, -1, ::Org::Allbinary::Physics::Movement::NoMovementFactory.getInstance().getMovmentInstance(), ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().RESOURCE).getInstance(0), ::Org::Allbinary::Game::Layer::Weapon::SimpleWeaponLayer.createDestroyed(), ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition)
        jfields_org_allbinary_game_ag_layer_weapon_mine_MineLayer
    end
    

    def initXYZ(x, y, z)
        self.setPosition(x + 5, y + 5, z)
        @viewPositionEventHandler.addListener(self)
        ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Ag::Weapon::Media::Audio::DropWeaponSound.getInstance())
    end
    java_overload :initXYZ, 3
    

    def damage(damage, damageType)
        @totalDamage = self.getInitDamage() + 1
    end
    java_overload :damage, 2
    

    def getDamage(damageType)
        MineLayer.superclass.java_super_method(:getDamage, 1).bind(self).call(damageType)
        return self.getInitDamage()
    end
    java_overload :getDamage, 1
    

    def setDestroyed(destroyed)
        MineLayer.superclass.java_super_method(:setDestroyed, 1).bind(self).call(destroyed)
        if self.isDestroyed()
            @viewPositionEventHandler.removeListener(self)
        end
    end
    java_overload :setDestroyed, 1

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

module ::Org; module Allbinary; module Ag; module Weapon; module Media; module Audio; autoload :DropWeaponSound, "org/allbinary/ag/weapon/media/audio/DropWeaponSound" unless const_defined?(:DropWeaponSound, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory" unless const_defined?(:SecondaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Physics; module Movement; autoload :NoMovementFactory, "org/allbinary/physics/movement/NoMovementFactory" unless const_defined?(:NoMovementFactory, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
module ::Org; module Allbinary; module View; module Event; autoload :ViewPositionEventHandler, "org/allbinary/view/event/ViewPositionEventHandler" unless const_defined?(:ViewPositionEventHandler, false); end; end; end; end
autoload :MineWeaponResources, "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources" unless const_defined?(:MineWeaponResources, false)

begin
    MineLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end


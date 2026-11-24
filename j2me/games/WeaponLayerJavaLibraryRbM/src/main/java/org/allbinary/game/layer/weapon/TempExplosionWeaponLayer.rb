# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.weapon

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/weapon/SimpleWeaponLayer"

module ::Org; module Allbinary; module Game; module Layer; module Weapon

class TempExplosionWeaponLayer < SimpleWeaponLayer
    attr_accessor :weaponProperties, :timeDelayHelper

    def jfields_org_allbinary_game_layer_weapon_TempExplosionWeaponLayer
        @weaponProperties = ::Org::Allbinary::Game::Combat::Weapon::WeaponProperties.new(-1, -1, 0, 1000, (((0).to_i + 32768) % 65536 - 32768))
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
    end
    

    def initialize(name, movement, animationInterface, rectangle, viewPosition, timeDelay)
        super(name, ::Org::Allbinary::Game::Multiplayer::Layer::RemoteInfo::REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition)
        jfields_org_allbinary_game_layer_weapon_TempExplosionWeaponLayer
        @timeDelayHelper.delay = timeDelay
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        if @timeDelayHelper.isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
            self.getCollidableInferface().collide(self, self)
            @totalDamage = self.getInitDamage() + 1
        end
        TempExplosionWeaponLayer.superclass.java_super_method(:processTick, 1).bind(self).call(allBinaryLayerManager)
    end
    java_overload :processTick, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Physics; module Movement; autoload :Movement, "org/allbinary/physics/movement/Movement" unless const_defined?(:Movement, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

end; end; end; end; end


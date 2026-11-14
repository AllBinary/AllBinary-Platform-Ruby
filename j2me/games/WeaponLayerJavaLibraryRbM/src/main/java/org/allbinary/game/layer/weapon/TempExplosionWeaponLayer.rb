# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.weapon

require "org/allbinary/game/layer/weapon/SimpleWeaponLayer"

class TempExplosionWeaponLayer < SimpleWeaponLayer
    attr_accessor :weaponProperties, :timeDelayHelper

    def initialize_fields
        @weaponProperties = WeaponProperties.new(-1, -1, 0, 1000, (((0).to_i + 32768) % 65536 - 32768))
        @timeDelayHelper = TimeDelayHelper.new(0)
    end
    

    def initialize(name, movement, animationInterface, rectangle, viewPosition, timeDelay)
        super(name, RemoteInfo::REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition)
        initialize_fields
        @timeDelayHelper.delay = timeDelay
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        if @timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
            self.getCollidableInferface().collide(self, self)
            @totalDamage = self.getInitDamage() + 1
        end
        super(allBinaryLayerManager)
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties"
autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :Movement, "org/allbinary/physics/movement/Movement"
autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"


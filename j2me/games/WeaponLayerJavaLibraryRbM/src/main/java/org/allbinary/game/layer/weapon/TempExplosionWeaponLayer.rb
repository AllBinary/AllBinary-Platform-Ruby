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

require "org/allbinary/animation/Animation"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/physics/movement/Movement"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/view/ViewPositionBase"


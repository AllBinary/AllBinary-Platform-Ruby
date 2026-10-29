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

class DamageWeaponLayer < WeaponLayer
    

    def initialize(name, remoteInfo, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition, username, actorSessionId, id, multiPlayerType)
        super(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        self.setCollidableInferface(CollidableDamageWeaponBehavior.new(true))
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/physics/movement/Movement"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/layer/weapon/CollidableDamageWeaponBehavior"


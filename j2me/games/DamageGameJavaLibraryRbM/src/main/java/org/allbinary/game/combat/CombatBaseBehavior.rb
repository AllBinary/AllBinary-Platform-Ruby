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
# package org.allbinary.game.combat


class CombatBaseBehavior
    attr_accessor :damageableBaseBehavior, :destroyableBaseBehavior, :readyForExplosion

    def initialize_fields
        @damageableBaseBehavior = nil
        @destroyableBaseBehavior = nil
        @readyForExplosion = false
    end
    

    def initialize(damageableBaseBehavior, destroyableBaseBehavior)
        initialize_fields
        @damageableBaseBehavior = damageableBaseBehavior
        @destroyableBaseBehavior = destroyableBaseBehavior
    end
    

    def getDamageableBaseBehavior()
        return @damageableBaseBehavior
    end
    

    def getDestroyableBaseBehavior()
        return @destroyableBaseBehavior
    end
    

    def isReadyForExplosion()
        return @readyForExplosion
    end
    

    def setReadyForExplosion(readyForExplosion)
        @readyForExplosion = readyForExplosion
    end
end

require "org/allbinary/game/combat/damage/DamageableBaseBehavior"
require "org/allbinary/game/combat/destroy/DestroyableBaseBehavior"

class CombatBaseBehavior
    NULL_COMBAT_BEHAVIOR = CombatBaseBehavior.new(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance())
end


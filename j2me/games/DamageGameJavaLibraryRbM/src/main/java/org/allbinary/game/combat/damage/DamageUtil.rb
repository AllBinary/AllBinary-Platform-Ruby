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
# package org.allbinary.game.combat.damage


class DamageUtil
    attr_accessor :logUtil, :COLLIDE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @COLLIDE = "collide"
    end
    

    def self.getInstance()
        return DamageUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def process(damageableInterface, damageableInterface2)
        damageableInterface.damage(damageableInterface2.getDamage(0), 0)
    end
    

    # throws Exception
    def debugDamage(collidableInterfaceCompositeInterface1, collidableInterfaceCompositeInterface)
        collidableDestroyableDamageableLayer = collidableInterfaceCompositeInterface
        damage = collidableDestroyableDamageableLayer.getDamage(0)
        if damage > 20000
            stringBuffer = StringMaker.new()
            stringBuffer.append("Collision ")
            stringBuffer.append(collidableInterfaceCompositeInterface1.to_s)
            stringBuffer.append(" with: ")
            stringBuffer.append(collidableInterfaceCompositeInterface.to_s)
            stringBuffer.append(" damage: ")
            stringBuffer.appendint(damage)
            @logUtil.putF(stringBuffer.to_s, collidableInterfaceCompositeInterface1, @COLLIDE)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/CollidableCompositeLayer"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/combat/damage/DamageableInterface"

class DamageUtil
    @@instance = DamageUtil.new()
end


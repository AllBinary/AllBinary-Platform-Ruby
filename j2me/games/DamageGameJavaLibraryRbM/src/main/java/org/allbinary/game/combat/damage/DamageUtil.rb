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
        DamageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DamageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DamageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DamageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer"
autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :DamageableInterface, "org/allbinary/game/combat/damage/DamageableInterface"

begin
    DamageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


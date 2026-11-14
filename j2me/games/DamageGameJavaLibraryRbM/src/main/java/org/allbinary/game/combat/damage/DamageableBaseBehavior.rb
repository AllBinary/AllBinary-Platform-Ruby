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

require "org/allbinary/game/combat/damage/DamageableInterface"

class DamageableBaseBehavior
    include DamageableInterface
    

    def self.getInstance()
        return DamageableBaseBehavior.instance
    end
    

    def getName()
        return self.class.name
    end
    

    # throws Exception
    def damage(damage, damageType)
    end
    

    # throws Exception
    def getDamage(damageType)
        return 6000
    end

    def self.instance()
        DamageableBaseBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DamageableBaseBehavior.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DamageableBaseBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DamageableBaseBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    DamageableBaseBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


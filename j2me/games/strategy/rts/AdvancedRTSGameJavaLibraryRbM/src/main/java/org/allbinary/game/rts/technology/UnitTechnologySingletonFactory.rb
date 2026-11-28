# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.rts.technology


module ::Org; module Allbinary; module Game; module Rts; module Technology

class UnitTechnologySingletonFactory
    attr_accessor :damage, :health, :reload, :repair, :speed

    def jfields_org_allbinary_game_rts_technology_UnitTechnologySingletonFactory
        @damage = 0 unless instance_variable_defined?(:@damage)
        @health = 0 unless instance_variable_defined?(:@health)
        @reload = 0 unless instance_variable_defined?(:@reload)
        @repair = 0 unless instance_variable_defined?(:@repair)
        @speed = 0 unless instance_variable_defined?(:@speed)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_game_rts_technology_UnitTechnologySingletonFactory
    end
    

    def init()
        self.setDamage(0)
        self.setHealth(0)
        self.setReload(0)
        self.setRepair(0)
        self.setSpeed(0)
    end
    

    def getDamage()
        return @damage
    end
    

    def setDamage(damage)
        @damage = damage
    end
    

    def getHealth()
        return @health
    end
    

    def setHealth(health)
        @health = health
    end
    

    def getReload()
        return @reload
    end
    

    def setReload(reload)
        @reload = reload
    end
    

    def getRepair()
        return @repair
    end
    

    def setRepair(repair)
        @repair = repair
    end
    

    def getSpeed()
        return @speed
    end
    

    def setSpeed(speed)
        @speed = speed
    end

    def self.instance()
        UnitTechnologySingletonFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UnitTechnologySingletonFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UnitTechnologySingletonFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UnitTechnologySingletonFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    UnitTechnologySingletonFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end


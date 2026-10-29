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


class UnitTechnologySingletonFactory
    attr_accessor :damage, :health, :reload, :repair, :speed

    def initialize_fields
        @damage = 0
        @health = 0
        @reload = 0
        @repair = 0
        @speed = 0
    end
    

    def self.getInstance()
        return UnitTechnologySingletonFactory.instance
    end
    

    def initialize()
        initialize_fields
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class UnitTechnologySingletonFactory
    @@instance = UnitTechnologySingletonFactory.new()
end


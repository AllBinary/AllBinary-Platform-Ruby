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
# package org.allbinary.game.health

require "org/allbinary/game/health/HealthInterface"

class Health
    include HealthInterface
    attr_accessor :health, :maxHealth, :healthListenerInterface

    def initialize_fields
        @health = 0
        @maxHealth = 0
        @healthListenerInterface = NullHealthListener::NULL_HEALTH_LISTENER
    end
    

    def initialize(maxHealth)
        initialize_fields
        self.setMaxHealth(maxHealth)
        self.setHealth(maxHealth)
    end
    

    def heal(ahealth)
        newHealth = self.getHealth() + ahealth
        if newHealth > self.getMaxHealth()
            self.setHealth(self.getMaxHealth())
        else
            self.setHealth(newHealth)
        end
    end
    

    def healMax()
        self.setHealth(self.getMaxHealth())
    end
    

    def isDamaged()
        if self.getHealth() != self.getMaxHealth()
            return true
        else
            return false
        end
    end
    

    def damage(ahealth)
        if ahealth < 0
            stringBuffer = StringMaker.new()
            stringBuffer.append("******* Trying to heal when damaging. Damage: ")
            stringBuffer.appendint(ahealth)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(self.to_s)
            ForcedLogUtil.log(stringBuffer.to_s, self)
            return
        end
        health = self.getHealth() - ahealth
        self.setHealth(health)
    end
    

    def isAlive()
        if self.getHealth() <= 0
            return false
        else
            return true
        end
    end
    

    def getMaxHealth()
        return @maxHealth
    end
    

    def setMaxHealth(maxHealth)
        @maxHealth = maxHealth
    end
    

    def setHealth(health)
        if health > self.getMaxHealth()
            @health = self.getMaxHealth()
        elsif health < 0
            @health = 0
        else
            @health = health
        end
        if @healthListenerInterface != nil
            @healthListenerInterface.onHealthChange()
        end
    end
    

    def getHealth()
        return @health
    end
    

    def addListener(healthGraphic)
        @healthListenerInterface = healthGraphic
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(Health::HEALTH_LABEL)
        stringBuffer.appendint(@health)
        stringBuffer.append(Health::MAX_HEALTH_LABEL)
        stringBuffer.appendint(@maxHealth)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/game/health/HealthListenerInterface"
require "org/allbinary/game/health/NullHealthListener"

class Health
    NULL_HEALTH = Health.new(0)
    NAME = "Health Resource"
    HEALTH_LABEL = "Health: "
    MAX_HEALTH_LABEL = " Max: "
end


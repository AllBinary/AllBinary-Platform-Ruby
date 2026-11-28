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

require "java/lang/JavaOverload"
require "org/allbinary/game/health/HealthInterface"

module ::Org; module Allbinary; module Game; module Health

class Health
    include HealthInterface
    attr_accessor :health, :maxHealth, :healthListenerInterface

    def jfields_org_allbinary_game_health_Health
        @health = 0 unless instance_variable_defined?(:@health)
        @maxHealth = 0 unless instance_variable_defined?(:@maxHealth)
        @healthListenerInterface = NullHealthListener::NULL_HEALTH_LISTENER
    end
    

    def initialize(maxHealth)
        jfields_org_allbinary_game_health_Health
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
    java_overload :heal, 1
    

    def healMax()
        self.setHealth(self.getMaxHealth())
    end
    java_overload :healMax, 0
    

    def isDamaged()
        if self.getHealth() != self.getMaxHealth()
            return true
        else
            return false
        end
    end
    java_overload :isDamaged, 0
    

    def damage(ahealth)
        if ahealth < 0
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("******* Trying to heal when damaging. Damage: ")
            stringBuffer.appendint(ahealth)
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
            stringBuffer.append(self.to_s)
            ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(stringBuffer.to_s, self)
            return
        end
        health = self.getHealth() - ahealth
        self.setHealth(health)
    end
    java_overload :damage, 1
    

    def isAlive()
        if self.getHealth() <= 0
            return false
        else
            return true
        end
    end
    java_overload :isAlive, 0
    

    def getMaxHealth()
        return @maxHealth
    end
    java_overload :getMaxHealth, 0
    

    def setMaxHealth(maxHealth)
        @maxHealth = maxHealth
    end
    java_overload :setMaxHealth, 1
    

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
    java_overload :setHealth, 1
    

    def getHealth()
        return @health
    end
    java_overload :getHealth, 0
    

    def addListener(healthGraphic)
        @healthListenerInterface = healthGraphic
    end
    java_overload :addListener, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(HEALTH_LABEL)
        stringBuffer.appendint(@health)
        stringBuffer.append(MAX_HEALTH_LABEL)
        stringBuffer.appendint(@maxHealth)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Health Resource")
        const_set(:HEALTH_LABEL, "Health: ")
        const_set(:MAX_HEALTH_LABEL, " Max: ")
        begin
            const_set(:NULL_HEALTH, Health.new(0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Health"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_HEALTH, :NAME, :HEALTH_LABEL, :MAX_HEALTH_LABEL].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :HealthListenerInterface, "org/allbinary/game/health/HealthListenerInterface" unless const_defined?(:HealthListenerInterface, false)
autoload :NullHealthListener, "org/allbinary/game/health/NullHealthListener" unless const_defined?(:NullHealthListener, false)

begin
    Health.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


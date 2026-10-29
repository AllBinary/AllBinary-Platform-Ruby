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
# package org.allbinary.game.combat.weapon

require "org/allbinary/game/combat/weapon/SimpleWeaponProperties"

class WeaponProperties < SimpleWeaponProperties
    attr_accessor :reloadTime, :targetingTime, :speed, :MAX, :ZERO

    def initialize_fields
        @reloadTime = 0
        @targetingTime = 0
        @speed = BasicDecimal::ZERO_BIGDECIMAL
        @MAX = 10240
        @ZERO = 0
    end
    

    def initialize(reloadTime, targetingTime, speed, damage, dissipation)
        super()
        initialize_fields
        if speed < @MAX && speed != 0 && !WeaponProperties.messageSent
            _MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.put(StringMaker.new().append(_MESSAGE).appendlong(speed).to_s, self, commonStrings.CONSTRUCTOR)
            WeaponProperties.messageSent = true
        end
        self.setReloadTime(reloadTime)
        self.setTargetingTime(targetingTime)
        self.setDamage(damage)
        self.setDissipation(dissipation)
        self.setSpeed(BasicDecimal.new(speed))
        if dissipation != @ZERO
            unscaledDamage = @speed.getUnscaled() * damage
            scaledDissipation = dissipation * @speed.getScaledFactorValue()
            value = (unscaledDamage / scaledDissipation)
            self.setRange((value * 9) / 10)
        end
    end
    

    def setReloadTime(reloadTime)
        @reloadTime = reloadTime
    end
    

    def getReloadTime()
        return @reloadTime
    end
    

    def setTargetingTime(targetingTime)
        @targetingTime = targetingTime
    end
    

    def getTargetingTime()
        return @targetingTime
    end
    

    def getSpeed()
        return @speed
    end
    

    def setSpeed(speed)
        @speed = speed
    end
    

    def getDamageI(range)
        return self.getDamage() - ((self.getDissipation() * range) / @speed.getScaled())
    end
    

    def toStringArray()
        index = 0
        stringArray = Array.new(3, nil)
        stringBuffer = StringMaker.new()
        stringArray[((index += 1) - 1)] = stringBuffer.append(WeaponProperties::DAMAGE).appendint((self.getDamage()).to_i).to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[((index += 1) - 1)] = stringBuffer.append(WeaponProperties::RANGE).appendint((self.getRange()).to_i).to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[((index += 1) - 1)] = stringBuffer.append(WeaponProperties::RELOAD).appendlong(self.getReloadTime()).to_s
        return stringArray
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(WeaponProperties::DAMAGE).appendint((self.getDamage()).to_i)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties::RANGE).appendint((self.getRange()).to_i)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties::RELOAD).appendlong(self.getReloadTime())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.messageSent()
        return defined?(@@messageSent) ? @@messageSent : nil
    end

    def self.messageSent=(value)
        @@messageSent = value
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

class WeaponProperties
    NULL_WEAPON_PROPERTIES = WeaponProperties.new(0, 0, 0, 0, (((0).to_i + 32768) % 65536 - 32768))
    @@messageSent = false
    DAMAGE = "Damage: "
    RANGE = "Range: "
    RELOAD = "Reload: "
end


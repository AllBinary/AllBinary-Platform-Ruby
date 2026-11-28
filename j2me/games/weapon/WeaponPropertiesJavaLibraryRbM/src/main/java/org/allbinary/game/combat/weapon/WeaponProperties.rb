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

require "java/lang/JavaOverload"
require "org/allbinary/game/combat/weapon/SimpleWeaponProperties"

module ::Org; module Allbinary; module Game; module Combat; module Weapon

class WeaponProperties < SimpleWeaponProperties
    attr_accessor :reloadTime, :targetingTime, :speed, :MAX, :ZERO

    def jfields_org_allbinary_game_combat_weapon_WeaponProperties
        @reloadTime = 0 unless instance_variable_defined?(:@reloadTime)
        @targetingTime = 0 unless instance_variable_defined?(:@targetingTime)
        @speed = ::Org::Allbinary::Logic::MathPackage::BasicDecimal::ZERO_BIGDECIMAL
        @MAX = 10240
        @ZERO = 0
    end
    

    def initialize(reloadTime, targetingTime, speed, damage, dissipation)
        super()
        jfields_org_allbinary_game_combat_weapon_WeaponProperties
        if speed < @MAX && speed != 0 && !@@messageSent
            _MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(_MESSAGE).appendlong(speed).to_s, self, commonStrings.CONSTRUCTOR)
            @@messageSent = true
        end
        self.setReloadTime(reloadTime)
        self.setTargetingTime(targetingTime)
        self.setDamage(damage)
        self.setDissipation(dissipation)
        self.setSpeed(::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(speed))
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
    java_overload :setReloadTime, 1
    

    def getReloadTime()
        return @reloadTime
    end
    java_overload :getReloadTime, 0
    

    def setTargetingTime(targetingTime)
        @targetingTime = targetingTime
    end
    java_overload :setTargetingTime, 1
    

    def getTargetingTime()
        return @targetingTime
    end
    java_overload :getTargetingTime, 0
    

    def getSpeed()
        return @speed
    end
    java_overload :getSpeed, 0
    

    def setSpeed(speed)
        @speed = speed
    end
    java_overload :setSpeed, 1
    

    def getDamageI(range)
        return self.getDamage() - ((self.getDissipation() * range) / @speed.getScaled())
    end
    java_overload :getDamageI, 1
    

    def toStringArray()
        index = 0
        stringArray = Array.new(3, nil)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringArray[((index += 1) - 1)] = stringBuffer.append(DAMAGE).appendint(((self.getDamage()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[((index += 1) - 1)] = stringBuffer.append(RANGE).appendint(((self.getRange()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[((index += 1) - 1)] = stringBuffer.append(RELOAD).appendlong(self.getReloadTime()).to_s
        return stringArray
    end
    java_overload :toStringArray, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(DAMAGE).appendint(((self.getDamage()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(RANGE).appendint(((self.getRange()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(RELOAD).appendlong(self.getReloadTime())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.messageSent()
        WeaponProperties.java_static_fields unless @java_static_fields_started
        return defined?(@@messageSent) ? @@messageSent : nil
    end

    def self.messageSent=(value)
        WeaponProperties.java_static_fields unless @java_static_fields_started
        @@messageSent = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@messageSent = false
        const_set(:DAMAGE, "Damage: ")
        const_set(:RANGE, "Range: ")
        const_set(:RELOAD, "Reload: ")
        begin
            const_set(:NULL_WEAPON_PROPERTIES, WeaponProperties.new(0, 0, 0, 0, (((0).to_i + 32768) % 65536 - 32768)))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WeaponProperties"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_WEAPON_PROPERTIES, :DAMAGE, :RANGE, :RELOAD].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    WeaponProperties.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end


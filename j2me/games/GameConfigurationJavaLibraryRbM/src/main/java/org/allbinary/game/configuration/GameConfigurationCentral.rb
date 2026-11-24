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
# package org.allbinary.game.configuration

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Game; module Configuration

class GameConfigurationCentral
    attr_accessor :logUtil, :SCALE, :ORIENTATION, :SENSOR_UPDATE_RATE, :VIBRATION, :CHALLENGE_LEVEL, :COLLIDE_DAMAGE, :DURABILITY_CHALLENGE_LEVEL, :SPEED_CHALLENGE_LEVEL, :ATTACK_CHALLENGE_LEVEL, :CONTROL_LEVEL, :PLAYER_INPUT_WAIT, :SPEED, :SOUND_VOLUME, :MAX_GAME_OBJECTS, :MAX_LAYERS, :gameControlFidelity

    def jfields_org_allbinary_game_configuration_GameConfigurationCentral
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @SCALE = nil unless instance_variable_defined?(:@SCALE)
        @ORIENTATION = nil unless instance_variable_defined?(:@ORIENTATION)
        @SENSOR_UPDATE_RATE = nil unless instance_variable_defined?(:@SENSOR_UPDATE_RATE)
        @VIBRATION = nil unless instance_variable_defined?(:@VIBRATION)
        @CHALLENGE_LEVEL = nil unless instance_variable_defined?(:@CHALLENGE_LEVEL)
        @COLLIDE_DAMAGE = nil unless instance_variable_defined?(:@COLLIDE_DAMAGE)
        @DURABILITY_CHALLENGE_LEVEL = nil unless instance_variable_defined?(:@DURABILITY_CHALLENGE_LEVEL)
        @SPEED_CHALLENGE_LEVEL = nil unless instance_variable_defined?(:@SPEED_CHALLENGE_LEVEL)
        @ATTACK_CHALLENGE_LEVEL = nil unless instance_variable_defined?(:@ATTACK_CHALLENGE_LEVEL)
        @CONTROL_LEVEL = nil unless instance_variable_defined?(:@CONTROL_LEVEL)
        @PLAYER_INPUT_WAIT = nil unless instance_variable_defined?(:@PLAYER_INPUT_WAIT)
        @SPEED = nil unless instance_variable_defined?(:@SPEED)
        @SOUND_VOLUME = nil unless instance_variable_defined?(:@SOUND_VOLUME)
        @MAX_GAME_OBJECTS = nil unless instance_variable_defined?(:@MAX_GAME_OBJECTS)
        @MAX_LAYERS = nil unless instance_variable_defined?(:@MAX_LAYERS)
        @gameControlFidelity = 36
    end
    

    def self.getInstance()
        if GameConfigurationCentral::SINGLETON == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (GameConfigurationCentral.instance_exec(GameConfigurationCentral.new()) { |java_value| remove_const(:SINGLETON) if const_defined?(:SINGLETON, false); const_set(:SINGLETON, java_value) })
        end
        return GameConfigurationCentral::SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_game_configuration_GameConfigurationCentral
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        @SCALE = GameConfiguration.new("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3))
        @ORIENTATION = GameConfiguration.new("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8))
        @SENSOR_UPDATE_RATE = GameConfiguration.new("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        @VIBRATION = GameConfiguration.new("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        @CHALLENGE_LEVEL = GameConfiguration.new("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @COLLIDE_DAMAGE = GameConfiguration.new("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @DURABILITY_CHALLENGE_LEVEL = GameConfiguration.new("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @SPEED_CHALLENGE_LEVEL = GameConfiguration.new("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @ATTACK_CHALLENGE_LEVEL = GameConfiguration.new("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @CONTROL_LEVEL = GameConfiguration.new("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @PLAYER_INPUT_WAIT = GameConfiguration.new("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @SPEED = GameConfiguration.new("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        @SOUND_VOLUME = GameConfiguration.new("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10))
        @MAX_GAME_OBJECTS = GameConfiguration.new("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))
        @MAX_LAYERS = GameConfiguration.new("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))
    end
    

    def load(abeClientInformation)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
            keyValuePersistance = ::Org::Allbinary::Game::Configuration::Persistance::GameConfigurationPersistanceSingleton.getInstance()
            keyValuePersistance.clear()
            keyValuePersistance.loadAll(abeClientInformation)
            list = keyValuePersistance.getIds()
            if list.size() > 0
                hashtable = keyValuePersistance.get(0)
                anyType = @SCALE.getName()
                value = hashtable.get(anyType)
                @SCALE.setValue(smallIntegerSingletonFactory.getAt((value).to_s.to_i))
            else
                @logUtil.putF("No Game Configuration To Load", self, commonStrings.LOAD)
            end
        rescue StandardError => e
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.LOAD, e)
        end
    end
    

    def setGameControlFidelity(gameControlFidelity)
        @gameControlFidelity = gameControlFidelity
    end
    

    def getGameControlFidelity()
        return @gameControlFidelity
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonStrings = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SCALE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@SCALE.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@ORIENTATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@ORIENTATION.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SENSOR_UPDATE_RATE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@SENSOR_UPDATE_RATE.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@VIBRATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@VIBRATION.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@CHALLENGE_LEVEL.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@COLLIDE_DAMAGE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@COLLIDE_DAMAGE.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@DURABILITY_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@DURABILITY_CHALLENGE_LEVEL.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SPEED_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@SPEED_CHALLENGE_LEVEL.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@ATTACK_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@ATTACK_CHALLENGE_LEVEL.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@CONTROL_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@CONTROL_LEVEL.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SPEED.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@SPEED.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@MAX_GAME_OBJECTS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@MAX_GAME_OBJECTS.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@MAX_LAYERS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(((@MAX_LAYERS.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameConfigurationCentral"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :GameConfigurationPersistanceSingleton, "org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton" unless const_defined?(:GameConfigurationPersistanceSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :KeyValuePersistance, "org/allbinary/game/configuration/persistance/KeyValuePersistance" unless const_defined?(:KeyValuePersistance, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GameConfiguration, "org/allbinary/game/configuration/GameConfiguration" unless const_defined?(:GameConfiguration, false)

begin
    GameConfigurationCentral.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


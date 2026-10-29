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


class GameConfigurationCentral
    attr_accessor :logUtil, :SCALE, :ORIENTATION, :SENSOR_UPDATE_RATE, :VIBRATION, :CHALLENGE_LEVEL, :COLLIDE_DAMAGE, :DURABILITY_CHALLENGE_LEVEL, :SPEED_CHALLENGE_LEVEL, :ATTACK_CHALLENGE_LEVEL, :CONTROL_LEVEL, :PLAYER_INPUT_WAIT, :SPEED, :SOUND_VOLUME, :MAX_GAME_OBJECTS, :MAX_LAYERS, :gameControlFidelity

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @SCALE = nil
        @ORIENTATION = nil
        @SENSOR_UPDATE_RATE = nil
        @VIBRATION = nil
        @CHALLENGE_LEVEL = nil
        @COLLIDE_DAMAGE = nil
        @DURABILITY_CHALLENGE_LEVEL = nil
        @SPEED_CHALLENGE_LEVEL = nil
        @ATTACK_CHALLENGE_LEVEL = nil
        @CONTROL_LEVEL = nil
        @PLAYER_INPUT_WAIT = nil
        @SPEED = nil
        @SOUND_VOLUME = nil
        @MAX_GAME_OBJECTS = nil
        @MAX_LAYERS = nil
        @gameControlFidelity = 36
    end
    

    def self.getInstance()
        if GameConfigurationCentral::SINGLETON == NullUtil.getInstance().NULL_OBJECT
            GameConfigurationCentral::SINGLETON = GameConfigurationCentral.new()
        end
        return GameConfigurationCentral::SINGLETON
    end
    

    def initialize()
        initialize_fields
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
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
        commonStrings = CommonStrings.getInstance()
        begin
            smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance()
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
        stringBuffer = StringMaker.new()
        commonStrings = CommonSeps.getInstance()
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SCALE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@SCALE.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@ORIENTATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@ORIENTATION.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SENSOR_UPDATE_RATE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@SENSOR_UPDATE_RATE.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@VIBRATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@VIBRATION.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@CHALLENGE_LEVEL.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@COLLIDE_DAMAGE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@COLLIDE_DAMAGE.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@DURABILITY_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@DURABILITY_CHALLENGE_LEVEL.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SPEED_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@SPEED_CHALLENGE_LEVEL.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@ATTACK_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@ATTACK_CHALLENGE_LEVEL.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@CONTROL_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@CONTROL_LEVEL.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@SPEED.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@SPEED.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@MAX_GAME_OBJECTS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@MAX_GAME_OBJECTS.getValue().to_i).to_i)
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(@MAX_LAYERS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint((@MAX_LAYERS.getValue().to_i).to_i)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton"
require "org/allbinary/game/configuration/persistance/KeyValuePersistance"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/configuration/GameConfiguration"

class GameConfigurationCentral
    SINGLETON = NullUtil.getInstance().NULL_OBJECT
end


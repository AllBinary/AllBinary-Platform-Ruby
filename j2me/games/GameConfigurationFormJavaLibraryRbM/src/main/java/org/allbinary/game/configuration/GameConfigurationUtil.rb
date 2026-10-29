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

# require "javax/microedition/lcdui/Item"

class GameConfigurationUtil
    attr_accessor :logUtil, :commonStrings, :GAUGE_UPDATE, :FROM, :TO, :COMPETITION_VALUE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @GAUGE_UPDATE = "Gauge Update: "
        @FROM = " from: "
        @TO = " to: "
        @COMPETITION_VALUE = 1
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameConfigurationUtil.instance
    end
    

    # throws Exception
    def change(gameOptionsForm, gauge)
        self.update(gauge)
        gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        self.updateChallange(gameOptionsForm, gameConfiguration)
    end
    

    # throws Exception
    def update(gauge)
        gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        value = smallIntegerSingletonFactory.getAt(gauge.getValue() + gameConfiguration.getMinValue().to_i)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@GAUGE_UPDATE)
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(@FROM)
        stringBuffer.appendint((gameConfiguration.getValue().to_i).to_i)
        stringBuffer.append(@TO)
        stringBuffer.appendint((value.to_i).to_i)
        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.UPDATE)
        gameConfiguration.setValue(value)
    end
    

    # throws Exception
    def setDefault(gauge)
        gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        stringBuffer = StringMaker.new()
        stringBuffer.append("Gauge Default: ")
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(@TO)
        stringBuffer.appendint((gameConfiguration.getDefaultValue().to_i).to_i)
        @logUtil.putF(stringBuffer.to_s, self, "setDefault")
        gauge.setValue(gameConfiguration.getDefaultValue().to_i - gameConfiguration.getMinValue().to_i)
        gameConfiguration.setValue(gameConfiguration.getDefaultValue())
    end
    

    # throws Exception
    def updateChallange(gameOptionsForm, gameConfiguration)
        gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        gameConfigurationCentral = GameConfigurationCentral.getInstance()
        if gameConfiguration == gameConfigurationCentral.CHALLENGE_LEVEL
            @logUtil.putF(@commonStrings.START, self, "updateChallange")
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            size = gameOptionsForm.size()
            (0...size).each do |index|
                item = gameOptionsForm.get(index)
                if item.is_a?(GameConfigurationGauge)
                    gauge = item
                    name = item.getLabel()
                    nextGameConfiguration = gameConfigurationSingleton.getInstanceByName(name)
                    if nextGameConfiguration == gameConfigurationCentral.COLLIDE_DAMAGE
                        gauge.setValue(gameConfigurationCentral.COLLIDE_DAMAGE.getValue().to_i - gameConfiguration.getMinValue().to_i)
                    elsif nextGameConfiguration == gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL
                        gauge.setValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().to_i - gameConfiguration.getMinValue().to_i)
                    elsif nextGameConfiguration == gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL
                        gauge.setValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().to_i - gameConfiguration.getMinValue().to_i)
                    elsif nextGameConfiguration == gameConfigurationCentral.SPEED_CHALLENGE_LEVEL
                        gauge.setValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().to_i - gameConfiguration.getMinValue().to_i)
                    end
                end
            end
        end
    end
    

    def updateCompetitionValue()
        @logUtil.putF(@commonStrings.START, self, "updateCompetitionValue")
        gameConfigurationCentral = GameConfigurationCentral.getInstance()
        @COMPETITION_VALUE = gameConfigurationCentral.COLLIDE_DAMAGE.getValue().to_i + gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().to_i + gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().to_i + gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().to_i
        @COMPETITION_VALUE = (@COMPETITION_VALUE >> 2)
    end
    

    def getCompetitionValue()
        return @COMPETITION_VALUE
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/configuration/GameConfiguration"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/game/configuration/GameConfigurationGauge"
require "org/allbinary/game/configuration/GameConfigurationSingleton"
require "org/allbinary/game/configuration/GameOptionsForm"

class GameConfigurationUtil
    @@instance = GameConfigurationUtil.new()
end


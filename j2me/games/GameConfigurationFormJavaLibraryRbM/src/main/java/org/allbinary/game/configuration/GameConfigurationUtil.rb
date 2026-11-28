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

class GameConfigurationUtil
    attr_accessor :logUtil, :commonStrings, :GAUGE_UPDATE, :FROM, :TO, :COMPETITION_VALUE

    def jfields_org_allbinary_game_configuration_GameConfigurationUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @GAUGE_UPDATE = "Gauge Update: "
        @FROM = " from: "
        @TO = " to: "
        @COMPETITION_VALUE = 1
    end

    def initialize
        jfields_org_allbinary_game_configuration_GameConfigurationUtil
    end
    

    def self.getInstance()
        return @@instance
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
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        value = smallIntegerSingletonFactory.getAt(gauge.getValue() + gameConfiguration.getMinValue().to_i)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@GAUGE_UPDATE)
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(@FROM)
        stringBuffer.appendint(((gameConfiguration.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(@TO)
        stringBuffer.appendint(((value.to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.UPDATE)
        gameConfiguration.setValue(value)
    end
    

    # throws Exception
    def setDefault(gauge)
        gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Gauge Default: ")
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(@TO)
        stringBuffer.appendint(((gameConfiguration.getDefaultValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
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
        GameConfigurationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameConfigurationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameConfigurationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameConfigurationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GameConfiguration, "org/allbinary/game/configuration/GameConfiguration" unless const_defined?(:GameConfiguration, false)
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false)
autoload :GameConfigurationGauge, "org/allbinary/game/configuration/GameConfigurationGauge" unless const_defined?(:GameConfigurationGauge, false)
autoload :GameConfigurationSingleton, "org/allbinary/game/configuration/GameConfigurationSingleton" unless const_defined?(:GameConfigurationSingleton, false)
autoload :GameOptionsForm, "org/allbinary/game/configuration/GameOptionsForm" unless const_defined?(:GameOptionsForm, false)

begin
    GameConfigurationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


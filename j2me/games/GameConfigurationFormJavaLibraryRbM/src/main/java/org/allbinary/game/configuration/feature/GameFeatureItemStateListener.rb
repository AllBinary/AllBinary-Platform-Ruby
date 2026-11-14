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
# package org.allbinary.game.configuration.feature

require "javax/microedition/lcdui/ItemStateListener"

class GameFeatureItemStateListener
    include ItemStateListener
    attr_accessor :logUtil, :gameOptionsForm

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameOptionsForm = nil
    end
    

    def initialize(gameOptionsForm)
        initialize_fields
        @gameOptionsForm = gameOptionsForm
        gameFeatureFactory = GameFeatureFactory.getInstance()
        GameFeatureItemStateListener.add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.DAMAGE_FLOATERS)
        GameFeatureItemStateListener.add(gameFeatureFactory.DROPPED_ITEMS)
        GameFeatureItemStateListener.add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.HEALTH_BARS)
        GameFeatureItemStateListener.add(gameFeatureFactory.SOUND)
        GameFeatureItemStateListener.add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
    end
    

    def self.add(gameFeature)
        if !GameFeatureItemStateListener.toggleList.contains(gameFeature)
            GameFeatureItemStateListener.toggleList.add(gameFeature)
        end
    end
    

    def itemStateChanged(item)
        begin
            itemLabel = item.getLabel()
            @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).to_s, self, "itemStateChanged")
            if item.is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().change(@gameOptionsForm, item)
            elsif item.is_a?(ChoiceGroup)
                gameFeatureUtil = GameFeatureUtil.getInstance()
                if gameFeatureUtil.isExclusive(itemLabel)
                    gameFeatureUtil.updateExclusiveForChoiceGroup(item)
                else
                    gameFeatureUtil.updateMultiple(item)
                end
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "itemStateChanged", e)
        end
    end

    def self.toggleList()
        GameFeatureItemStateListener.java_static_fields unless @java_static_fields_started
        return defined?(@@toggleList) ? @@toggleList : nil
    end

    def self.toggleList=(value)
        GameFeatureItemStateListener.java_static_fields unless @java_static_fields_started
        @@toggleList = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@toggleList = BasicArrayListD.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameFeatureItemStateListener"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup"
autoload :Item, "javax/microedition/lcdui/Item"
autoload :GameConfigurationGauge, "org/allbinary/game/configuration/GameConfigurationGauge"
autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil"
autoload :GameOptionsForm, "org/allbinary/game/configuration/GameOptionsForm"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :GameFeature, "org/allbinary/game/configuration/feature/GameFeature"
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory"
autoload :GameFeatureUtil, "org/allbinary/game/configuration/feature/GameFeatureUtil"

begin
    GameFeatureItemStateListener.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


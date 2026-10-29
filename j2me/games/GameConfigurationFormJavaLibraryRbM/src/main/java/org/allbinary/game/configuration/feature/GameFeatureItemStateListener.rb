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

# require "javax/microedition/lcdui/ChoiceGroup"
# require "javax/microedition/lcdui/Item"
# require "javax/microedition/lcdui/ItemStateListener"

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
        return defined?(@@toggleList) ? @@toggleList : nil
    end

    def self.toggleList=(value)
        @@toggleList = value
    end
end

require "org/allbinary/game/configuration/GameConfigurationGauge"
require "org/allbinary/game/configuration/GameConfigurationUtil"
require "org/allbinary/game/configuration/GameOptionsForm"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/configuration/feature/GameFeature"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/game/configuration/feature/GameFeatureUtil"

class GameFeatureItemStateListener
    @@toggleList = BasicArrayListD.new()
end


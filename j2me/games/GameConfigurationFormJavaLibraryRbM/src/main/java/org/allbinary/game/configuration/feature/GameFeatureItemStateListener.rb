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

require "java/lang/JavaOverload"
require "javax/microedition/lcdui/ItemStateListener"

module ::Org; module Allbinary; module Game; module Configuration; module Feature

class GameFeatureItemStateListener
    include ::Javax::Microedition::Lcdui::ItemStateListener
    attr_accessor :logUtil, :gameOptionsForm

    def jfields_org_allbinary_game_configuration_feature_GameFeatureItemStateListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameOptionsForm = nil unless instance_variable_defined?(:@gameOptionsForm)
    end
    

    def initialize(gameOptionsForm)
        jfields_org_allbinary_game_configuration_feature_GameFeatureItemStateListener
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
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).to_s, self, "itemStateChanged")
            if item.is_a?(::Org::Allbinary::Game::Configuration::GameConfigurationGauge)
                ::Org::Allbinary::Game::Configuration::GameConfigurationUtil.getInstance().change(@gameOptionsForm, item)
            elsif item.is_a?(::Javax::Microedition::Lcdui::ChoiceGroup)
                gameFeatureUtil = GameFeatureUtil.getInstance()
                if gameFeatureUtil.isExclusive(itemLabel)
                    gameFeatureUtil.updateExclusiveForChoiceGroup(item)
                else
                    gameFeatureUtil.updateMultiple(item)
                end
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "itemStateChanged", e)
        end
    end
    java_overload :itemStateChanged, 1

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
            @@toggleList = ::Org::Allbinary::Util::BasicArrayListD.new()
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

module ::Javax; module Microedition; module Lcdui; autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup" unless const_defined?(:ChoiceGroup, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationGauge, "org/allbinary/game/configuration/GameConfigurationGauge" unless const_defined?(:GameConfigurationGauge, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil" unless const_defined?(:GameConfigurationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameOptionsForm, "org/allbinary/game/configuration/GameOptionsForm" unless const_defined?(:GameOptionsForm, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :GameFeature, "org/allbinary/game/configuration/feature/GameFeature" unless const_defined?(:GameFeature, false)
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false)
autoload :GameFeatureUtil, "org/allbinary/game/configuration/feature/GameFeatureUtil" unless const_defined?(:GameFeatureUtil, false)

begin
    GameFeatureItemStateListener.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end


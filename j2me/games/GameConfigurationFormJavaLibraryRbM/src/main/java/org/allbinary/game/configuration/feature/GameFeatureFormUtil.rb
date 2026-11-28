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


module ::Org; module Allbinary; module Game; module Configuration; module Feature

class GameFeatureFormUtil
    attr_accessor :logUtil, :meUtil

    def jfields_org_allbinary_game_configuration_feature_GameFeatureFormUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @meUtil = ::Org::Allbinary::MIDPUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_configuration_feature_GameFeatureFormUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def getChoiceGroup(hashtable, name, option)
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        choiceGroup = ::Javax::Microedition::Lcdui::ChoiceGroup.new(name, option, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance(), ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE_ARRAY)
        list = hashtable.get(name)
        features = Features.getInstance()
        _ADD_CHOICE = ": Adding Choice: "
        _GET_CHOICE_GROUP = "getChoiceGroup"
        size = list.size()
        (0...size).each do |index|
            gameFeature = list.objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            @logUtil.putF(stringMaker.append(name).append(_ADD_CHOICE).append(gameFeature.to_s).to_s, self, _GET_CHOICE_GROUP)
            choiceGroup.append(gameFeature.to_s, ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE)
            if features.isFeature(gameFeature)
                choiceGroup.setSelectedIndex(index, true)
            end
        end
        return choiceGroup
    end
    

    def addChoiceGroup(form, hashtable, option)
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        _ADDING_CHOICE_GROUP = "Adding Choice Group: "
        _ADD_CHOICE_GROUP = "addChoiceGroup"
        size = hashtable.size()
        objectArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(hashtable)
        name = nil
        (0...size).each do |index|
            name = objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            @logUtil.putF(stringMaker.append(_ADDING_CHOICE_GROUP).append(name).to_s, self, _ADD_CHOICE_GROUP)
            @meUtil.appendItem(form, self.getChoiceGroup(hashtable, name, option))
        end
    end
    

    # throws Exception
    def setDefault(form)
        size = form.size()
        (0...size).each do |index|
            item = form.get(index)
            if item.is_a?(::Org::Allbinary::Game::Configuration::GameConfigurationGauge)
                ::Org::Allbinary::Game::Configuration::GameConfigurationUtil.getInstance().setDefault(item)
            elsif item.is_a?(::Javax::Microedition::Lcdui::ChoiceGroup)
                GameFeatureUtil.getInstance().setDefault(item)
            end
        end
    end

    def self.instance()
        GameFeatureFormUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameFeatureFormUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameFeatureFormUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameFeatureFormUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup" unless const_defined?(:ChoiceGroup, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; autoload :MIDPUtil, "org/allbinary/MIDPUtil" unless const_defined?(:MIDPUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationGauge, "org/allbinary/game/configuration/GameConfigurationGauge" unless const_defined?(:GameConfigurationGauge, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil" unless const_defined?(:GameConfigurationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Screen; autoload :CommandForm, "org/allbinary/graphics/displayable/screen/CommandForm" unless const_defined?(:CommandForm, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
autoload :Feature, "org/allbinary/game/configuration/feature/Feature" unless const_defined?(:Feature, false)
autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false)
autoload :GameFeatureUtil, "org/allbinary/game/configuration/feature/GameFeatureUtil" unless const_defined?(:GameFeatureUtil, false)

begin
    GameFeatureFormUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end


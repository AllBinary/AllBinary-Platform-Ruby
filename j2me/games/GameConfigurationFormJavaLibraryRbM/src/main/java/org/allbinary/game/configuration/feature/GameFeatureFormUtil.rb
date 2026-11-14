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


class GameFeatureFormUtil
    attr_accessor :logUtil, :meUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @meUtil = MEUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameFeatureFormUtil.instance
    end
    

    def getChoiceGroup(hashtable, name, option)
        stringMaker = StringMaker.new()
        choiceGroup = ChoiceGroup.new(name, option, StringUtil.getInstance().getArrayInstance(), NullImage::NULL_IMAGE_ARRAY)
        list = hashtable.get(name)
        features = Features.getInstance()
        _ADD_CHOICE = ": Adding Choice: "
        _GET_CHOICE_GROUP = "getChoiceGroup"
        size = list.size()
        (0...size).each do |index|
            gameFeature = list.objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            @logUtil.putF(stringMaker.append(name).append(_ADD_CHOICE).append(gameFeature.to_s).to_s, self, _GET_CHOICE_GROUP)
            choiceGroup.append(gameFeature.to_s, NullImage::NULL_IMAGE)
            if features.isFeature(gameFeature)
                choiceGroup.setSelectedIndex(index, true)
            end
        end
        return choiceGroup
    end
    

    def addChoiceGroup(form, hashtable, option)
        stringMaker = StringMaker.new()
        _ADDING_CHOICE_GROUP = "Adding Choice Group: "
        _ADD_CHOICE_GROUP = "addChoiceGroup"
        size = hashtable.size()
        objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
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
            if item.is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().setDefault(item)
            elsif item.is_a?(ChoiceGroup)
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

autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup"
autoload :Item, "javax/microedition/lcdui/Item"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :GameConfigurationGauge, "org/allbinary/game/configuration/GameConfigurationGauge"
autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil"
autoload :CommandForm, "org/allbinary/graphics/displayable/screen/CommandForm"
autoload :MEUtil, "org/allbinary/logic/MEUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :HashtableUtil, "org/allbinary/util/HashtableUtil"
autoload :Feature, "org/allbinary/game/configuration/feature/Feature"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureUtil, "org/allbinary/game/configuration/feature/GameFeatureUtil"

begin
    GameFeatureFormUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


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
# require "javax/microedition/lcdui/NullImage"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/GameConfigurationGauge"
require "org/allbinary/game/configuration/GameConfigurationUtil"
require "org/allbinary/graphics/displayable/screen/CommandForm"
require "org/allbinary/logic/MEUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/game/configuration/feature/Feature"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureUtil"

class GameFeatureFormUtil
    @@instance = GameFeatureFormUtil.new()
end


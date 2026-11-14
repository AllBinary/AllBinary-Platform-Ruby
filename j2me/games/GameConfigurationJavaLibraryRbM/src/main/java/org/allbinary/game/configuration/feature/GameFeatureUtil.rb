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


class GameFeatureUtil
    attr_accessor :logUtil, :tsUtil, :enumerationUtil, :ON_GAME_FEATURE_CHANGE, :GAME_FEATURE_CHANGED

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tsUtil = TsUtil.getInstance()
        @enumerationUtil = EnumerationUtil.getInstance()
        @ON_GAME_FEATURE_CHANGE = "onGameFeatureChange"
        @GAME_FEATURE_CHANGED = "Game Feature Changed: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameFeatureUtil.instance
    end
    

    # throws Exception
    def setDefault(choiceGroup)
        stringBuffer = StringMaker.new()
        _METHOD_NAME = "setDefault"
        _SELECTED_ARRAY_RETURN = "selectedArray_return["
        _SELECTED_SEP = "] = "
        selectedArray_return = Array.new(choiceGroup.size(), false)
        total = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
        features = Features.getInstance()
        (0...selectedArray_return.length).each do |index|
            isSelected = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(_SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(_SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
            selectedChoiceLabel = choiceGroup.getString(index)
            gameFeature = Feature.getInstance(selectedChoiceLabel)
            if features.isDefault(gameFeature)
                features.add(gameFeature)
                choiceGroup.setSelectedIndex(index, true)
            else
                features.remove(gameFeature)
                choiceGroup.setSelectedIndex(index, false)
            end
        end
    end
    

    # throws Exception
    def updateMultiple(choiceGroup)
        stringBuffer = StringMaker.new()
        _METHOD_NAME = "updateMultiple"
        _SELECTED_ARRAY_RETURN = "selectedArray_return["
        _SELECTED_SEP = "] = "
        selectedArray_return = Array.new(choiceGroup.size(), false)
        total = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Multiple Total Choices: ")
        stringBuffer.appendint(total)
        @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
        features = Features.getInstance()
        (0...selectedArray_return.length).each do |index|
            isSelected = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(_SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(_SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
            selectedChoiceLabel = choiceGroup.getString(index)
            gameFeature = Feature.getInstance(selectedChoiceLabel)
            if !isSelected && features.isFeature(gameFeature)
                features.remove(gameFeature)
            elsif isSelected && !features.isFeature(gameFeature)
                features.add(gameFeature)
            end
        end
    end
    

    # throws Exception
    def updateExclusiveForChoiceGroup(choiceGroup)
        stringBuffer = StringMaker.new()
        _METHOD_NAME = "updateExclusive"
        _SELECTED_ARRAY_RETURN = "selectedArray_return["
        _SELECTED_SEP = "] = "
        selectedArray_return = Array.new(choiceGroup.size(), false)
        total = choiceGroup.getSelectedFlags(selectedArray_return)
        stringBuffer.append("Exclusive Total Choices: 1==")
        stringBuffer.appendint(total)
        @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
        (0...selectedArray_return.length).each do |index|
            isSelected = selectedArray_return[index]
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(_SELECTED_ARRAY_RETURN)
            stringBuffer.appendint(index)
            stringBuffer.append(_SELECTED_SEP)
            stringBuffer.appendboolean(isSelected)
            @logUtil.putF(stringBuffer.to_s, self, _METHOD_NAME)
            if isSelected
                selectedChoiceLabel = choiceGroup.getString(index)
                self.updateExclusive(selectedChoiceLabel)
            end
        end
    end
    

    def isExclusive(itemLabel)
        enumeration = GameFeatureChoiceGroups.getExclusiveInstance().get().keys()
        name = nil
        while @enumerationUtil.hasMoreElements(enumeration)
            name = @enumerationUtil.nextElement(enumeration)
            if @tsUtil.compareTo(itemLabel, name) == 0
                return true
            end
        end
        return false
    end
    

    # throws Exception
    def updateExclusive(selectedChoiceLabel)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).to_s, self, "updateExclusive")
        gameFeature = Feature.getInstance(selectedChoiceLabel)
        hashtable = GameFeatureChoiceGroups.getExclusiveInstance().get()
        objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        basicArrayList = nil
        anyType = nil
        size = objectArray.length
        (0...size).each do |index|
            anyType = objectArray[index]
            basicArrayList = hashtable.get(anyType)
            self.updateExclusiveList(gameFeature, basicArrayList)
        end
    end
    

    # throws Exception
    def updateExclusiveList(gameFeature, list)
        if list.contains(gameFeature)
            features = Features.getInstance()
            addIndex = list.indexOf(gameFeature)
            size = list.size()
            (0...size).each do |index|
                if addIndex != index
                    features.remove(list.objectArray[index])
                else
                    features.add(list.objectArray[index])
                end
            end
        end
    end

    def self.instance()
        GameFeatureUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameFeatureUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameFeatureUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameFeatureUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Enumeration, "java/util/Enumeration"
autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil"
autoload :HashtableUtil, "org/allbinary/util/HashtableUtil"
autoload :Feature, "org/allbinary/game/configuration/feature/Feature"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureChoiceGroups, "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups"

begin
    GameFeatureUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


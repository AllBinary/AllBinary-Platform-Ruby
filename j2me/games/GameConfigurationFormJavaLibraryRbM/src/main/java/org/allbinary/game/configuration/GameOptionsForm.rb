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

# require "javax/microedition/lcdui/Choice"
# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Item"
# require "javax/microedition/lcdui/TextField"
require "org/allbinary/graphics/displayable/screen/CommandForm"

class GameOptionsForm < CommandForm
    attr_accessor :meUtil

    def initialize_fields
        @meUtil = MEUtil.getInstance()
    end
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.addConfiguration()
        gameFeatureFormUtil = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(self, GameFeatureChoiceGroups.getExclusiveInstance().get(), Choice::EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(self, GameFeatureChoiceGroups.getMultipleInstance().get(), Choice::MULTIPLE)
        self.initCommands(commandListener)
        self.setItemStateListener(GameFeatureItemStateListener.new(self))
        self.addTextFieldsIfSimulated()
    end
    

    # throws Exception
    def closeClientInformation(abeClientInformation)
        self.class.superclass.instance_method(:close).bind(self).call()
        self.save(abeClientInformation)
    end
    

    def addTextFieldsIfSimulated()
        key = OrientationData.getInstance().ORIENTATION_SENSOR_INPUT
        hashtable = GameFeatureChoiceGroups.getExclusiveInstance().get()
        if hashtable != nil
            listCanBeNull = hashtable.get(key)
            if listCanBeNull != nil
                list = listCanBeNull
                if list.contains(SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)
                    self.addTextFields()
                end
            end
        end
    end
    

    def addTextFields()
        hashtable = GameConfigurationTextInput.getHashtable()
        size = hashtable.size()
        objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        gameConfigurationTextInput = nil
        textField = nil
        (0...size).each do |index|
            gameConfigurationTextInput = hashtable.get(objectArray[index])
            textField = TextField.new(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField::ANY)
            @meUtil.appendItem(self, textField)
        end
    end
    

    def addConfiguration()
        _METHOD_NAME = "addConfiguration"
        _NAME = "Name: "
        list = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList()
        _GAUGE_CHANGE = MyCommandsFactory.getInstance().GAUGE_CHANGE
        stringMaker = StringMaker.new()
        size = list.size()
        gameConfiguration = nil
        gauge = nil
        (0...size).each do |index|
            gameConfiguration = list.objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            @logUtil.putF(stringMaker.append(_NAME).append(gameConfiguration.to_s).to_s, self, _METHOD_NAME)
            gauge = GameConfigurationGauge.new(gameConfiguration)
            gauge.setDefaultCommand(_GAUGE_CHANGE)
            gauge.setItemCommandListener(GameFeatureItemCommandListener.new(self))
            @meUtil.appendItem(self, gauge)
        end
    end
    

    def initCommands(cmdListener)
        gameCommandsFactory = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.CLOSE_OPTIONS)
        self.addCommand(gameCommandsFactory.DEFAULT_OPTIONS)
        self.setCommandListener(cmdListener)
    end
    

    # throws Exception
    def save(abeClientInformation)
        size = self.size()
        item = nil
        (0...size).each do |index|
            item = self.get(index)
            if item.is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().update(item)
            elsif item.is_a?(TextField)
                GameConfigurationTextInput.update(item)
            end
        end
        GameConfigurationUtil.getInstance().updateCompetitionValue()
        hashtable = StdUtil.getInstance().createHashtable()
        _SCALE = GameConfigurationCentral.getInstance().SCALE
        hashtable.put(_SCALE.getName(), _SCALE.getValue().to_s)
        keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance()
        keyValuePersistance.clear()
        keyValuePersistance.loadAll(abeClientInformation)
        list = keyValuePersistance.getIds()
        keyValuePersistance.save(abeClientInformation, hashtable)
        size2 = list.size()
        integer = nil
        (0...size2).each do |index|
            integer = list.objectArray[index]
            keyValuePersistance.delete(abeClientInformation, integer.to_i)
        end
    end
end

require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups"
require "org/allbinary/game/configuration/feature/GameFeatureFormUtil"
require "org/allbinary/game/configuration/feature/GameFeatureItemCommandListener"
require "org/allbinary/game/configuration/feature/GameFeatureItemStateListener"
require "org/allbinary/game/configuration/feature/SensorFeatureFactory"
require "org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton"
require "org/allbinary/game/configuration/persistance/KeyValuePersistance"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/command/MyCommandsFactory"
require "org/allbinary/input/gyro/OrientationData"
require "org/allbinary/logic/MEUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/configuration/GameConfiguration"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/game/configuration/GameConfigurationGauge"
require "org/allbinary/game/configuration/GameConfigurationSingleton"
require "org/allbinary/game/configuration/GameConfigurationTextInput"
require "org/allbinary/game/configuration/GameConfigurationUtil"


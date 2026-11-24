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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/graphics/displayable/screen/CommandForm"

module ::Org; module Allbinary; module Game; module Configuration

class GameOptionsForm < ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm
    attr_accessor :meUtil

    def jfields_org_allbinary_game_configuration_GameOptionsForm
        @meUtil = ::Org::Allbinary::MIDPUtil.getInstance()
    end
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_org_allbinary_game_configuration_GameOptionsForm
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.addConfiguration()
        gameFeatureFormUtil = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(self, ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getExclusiveInstance().get(), ::Javax::Microedition::Lcdui::Choice::EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(self, ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getMultipleInstance().get(), ::Javax::Microedition::Lcdui::Choice::MULTIPLE)
        self.initCommands(commandListener)
        self.setItemStateListener(::Org::Allbinary::Game::Configuration::Feature::GameFeatureItemStateListener.new(self))
        self.addTextFieldsIfSimulated()
    end
    

    # throws Exception
    def closeClientInformation(abeClientInformation)
        GameOptionsForm.superclass.java_super_method(:close, 0).bind(self).call()
        self.save(abeClientInformation)
    end
    java_overload :closeClientInformation, 1
    

    def addTextFieldsIfSimulated()
        key = ::Org::Allbinary::Input::Gyro::OrientationData.getInstance().ORIENTATION_SENSOR_INPUT
        hashtable = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getExclusiveInstance().get()
        if hashtable != nil
            listCanBeNull = hashtable.get(key)
            if listCanBeNull != nil
                list = listCanBeNull
                if list.contains(::Org::Allbinary::Game::Configuration::Feature::SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)
                    self.addTextFields()
                end
            end
        end
    end
    java_overload :addTextFieldsIfSimulated, 0
    

    def addTextFields()
        hashtable = GameConfigurationTextInput.getHashtable()
        size = hashtable.size()
        objectArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(hashtable)
        gameConfigurationTextInput = nil
        textField = nil
        (0...size).each do |index|
            gameConfigurationTextInput = hashtable.get(objectArray[index])
            textField = ::Javax::Microedition::Lcdui::TextField.new(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, ::Javax::Microedition::Lcdui::TextField::ANY)
            @meUtil.appendItem(self, textField)
        end
    end
    java_overload :addTextFields, 0
    

    def addConfiguration()
        _METHOD_NAME = "addConfiguration"
        _NAME = "Name: "
        list = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList()
        _GAUGE_CHANGE = ::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance().GAUGE_CHANGE
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = list.size()
        gameConfiguration = nil
        gauge = nil
        (0...size).each do |index|
            gameConfiguration = list.objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            @logUtil.putF(stringMaker.append(_NAME).append(gameConfiguration.to_s).to_s, self, _METHOD_NAME)
            gauge = GameConfigurationGauge.new(gameConfiguration)
            gauge.setDefaultCommand(_GAUGE_CHANGE)
            gauge.setItemCommandListener(::Org::Allbinary::Game::Configuration::Feature::GameFeatureItemCommandListener.new(self))
            @meUtil.appendItem(self, gauge)
        end
    end
    java_overload :addConfiguration, 0
    

    def initCommands(cmdListener)
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.CLOSE_OPTIONS)
        self.addCommand(gameCommandsFactory.DEFAULT_OPTIONS)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def save(abeClientInformation)
        size = self.size()
        item = nil
        (0...size).each do |index|
            item = self.get(index)
            if item.is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().update(item)
            elsif item.is_a?(::Javax::Microedition::Lcdui::TextField)
                GameConfigurationTextInput.update(item)
            end
        end
        GameConfigurationUtil.getInstance().updateCompetitionValue()
        hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        _SCALE = GameConfigurationCentral.getInstance().SCALE
        hashtable.put(_SCALE.getName(), (_SCALE.getValue().to_i).to_s)
        keyValuePersistance = ::Org::Allbinary::Game::Configuration::Persistance::GameConfigurationPersistanceSingleton.getInstance()
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
    java_overload :save, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Choice, "javax/microedition/lcdui/Choice" unless const_defined?(:Choice, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :TextField, "javax/microedition/lcdui/TextField" unless const_defined?(:TextField, false); end; end; end
module ::Org; module Allbinary; autoload :MIDPUtil, "org/allbinary/MIDPUtil" unless const_defined?(:MIDPUtil, false); end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureChoiceGroups, "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" unless const_defined?(:GameFeatureChoiceGroups, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFormUtil, "org/allbinary/game/configuration/feature/GameFeatureFormUtil" unless const_defined?(:GameFeatureFormUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureItemCommandListener, "org/allbinary/game/configuration/feature/GameFeatureItemCommandListener" unless const_defined?(:GameFeatureItemCommandListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureItemStateListener, "org/allbinary/game/configuration/feature/GameFeatureItemStateListener" unless const_defined?(:GameFeatureItemStateListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :SensorFeatureFactory, "org/allbinary/game/configuration/feature/SensorFeatureFactory" unless const_defined?(:SensorFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :GameConfigurationPersistanceSingleton, "org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton" unless const_defined?(:GameConfigurationPersistanceSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :KeyValuePersistance, "org/allbinary/game/configuration/persistance/KeyValuePersistance" unless const_defined?(:KeyValuePersistance, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Command; autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory" unless const_defined?(:MyCommandsFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Gyro; autoload :OrientationData, "org/allbinary/input/gyro/OrientationData" unless const_defined?(:OrientationData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :GameConfiguration, "org/allbinary/game/configuration/GameConfiguration" unless const_defined?(:GameConfiguration, false)
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false)
autoload :GameConfigurationGauge, "org/allbinary/game/configuration/GameConfigurationGauge" unless const_defined?(:GameConfigurationGauge, false)
autoload :GameConfigurationSingleton, "org/allbinary/game/configuration/GameConfigurationSingleton" unless const_defined?(:GameConfigurationSingleton, false)
autoload :GameConfigurationTextInput, "org/allbinary/game/configuration/GameConfigurationTextInput" unless const_defined?(:GameConfigurationTextInput, false)
autoload :GameConfigurationUtil, "org/allbinary/game/configuration/GameConfigurationUtil" unless const_defined?(:GameConfigurationUtil, false)

end; end; end; end


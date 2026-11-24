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
require "org/allbinary/graphics/displayable/screen/CommandForm"

module ::Org; module Allbinary; module Game; module Configuration

class LoadGameForm < ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm
    attr_accessor :meUtil, :areChoices

    def jfields_org_allbinary_game_configuration_LoadGameForm
        @meUtil = ::Org::Allbinary::MIDPUtil.getInstance()
        @areChoices = false unless instance_variable_defined?(:@areChoices)
    end
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_org_allbinary_game_configuration_LoadGameForm
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.update()
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.LOAD_FILE)
        self.addCommand(gameCommandsFactory.DELETE_FILE)
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def update()
        list = ::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceSingleton.getInstance().getIds()
        self.deleteAll()
        if list.size() > 0
            self.add(list, "Select A Saved Game", ::Javax::Microedition::Lcdui::Choice::EXCLUSIVE)
            @areChoices = true
        else
            @meUtil.appendItem(self, ::Javax::Microedition::Lcdui::StringItem.new("No Saved Games", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Item::PLAIN))
            @areChoices = false
        end
        LoadGameForm.superclass.java_super_method(:update, 0).bind(self).call()
    end
    java_overload :update, 0
    

    def add(list, name, option)
        choiceGroup = self.getChoiceGroup(list, name, option)
        if list.size() > 0
            choiceGroup.setSelectedIndex(0, true)
        end
        @meUtil.appendItem(self, choiceGroup)
    end
    java_overload :add, 3
    

    def getChoiceGroup(list, name, option)
        _METHOD_NAME = "getChoiceGroup"
        _ADDING_CHOICE = "Adding Choice: "
        choiceGroup = ::Javax::Microedition::Lcdui::ChoiceGroup.new(name, option, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance(), ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE_ARRAY)
        size = list.size()
        (0...size).each do |index|
            anyType = list.objectArray[index]
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(_ADDING_CHOICE).append(anyType.to_s).to_s, self, _METHOD_NAME)
            choiceGroup.append(anyType.to_s, ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE)
        end
        return choiceGroup
    end
    java_overload :getChoiceGroup, 3
    

    def getSelectedId()
        if @areChoices
            choiceGroup = self.get(0)
            return choiceGroup.getSelectedIndex()
        else
            return -1
        end
    end
    java_overload :getSelectedId, 0
    

    def getSelectedText()
        if @areChoices
            choiceGroup = self.get(0)
            value = (choiceGroup.getString(choiceGroup.getSelectedIndex())).to_s.to_i
            return value
        else
            return -1
        end
    end
    java_overload :getSelectedText, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Choice, "javax/microedition/lcdui/Choice" unless const_defined?(:Choice, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup" unless const_defined?(:ChoiceGroup, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :StringItem, "javax/microedition/lcdui/StringItem" unless const_defined?(:StringItem, false); end; end; end
module ::Org; module Allbinary; autoload :MIDPUtil, "org/allbinary/MIDPUtil" unless const_defined?(:MIDPUtil, false); end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :GamePersistanceSingleton, "org/allbinary/game/configuration/persistance/GamePersistanceSingleton" unless const_defined?(:GamePersistanceSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end


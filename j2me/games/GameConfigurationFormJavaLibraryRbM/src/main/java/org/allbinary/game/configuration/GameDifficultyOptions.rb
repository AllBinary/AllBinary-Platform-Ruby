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

class GameDifficultyOptions < ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm
    attr_accessor :meUtil, :list

    def jfields_org_allbinary_game_configuration_GameDifficultyOptions
        @meUtil = ::Org::Allbinary::MIDPUtil.getInstance()
        @list = nil unless instance_variable_defined?(:@list)
    end
    

    def initialize(commandListener, title, list, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_org_allbinary_game_configuration_GameDifficultyOptions
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @list = list
        self.update()
        self.initCommands(commandListener)
        gameDifficultyFactory = ::Org::Allbinary::Game::Configuration::Persistance::GameDifficultyFactory.getInstance()
        self.setSelectedId(gameDifficultyFactory.getLevel())
    end
    

    def open()
        GameDifficultyOptions.superclass.java_super_method(:open, 0).bind(self).call()
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        GameDifficultyOptions.superclass.java_super_method(:close, 0).bind(self).call()
        self.save()
    end
    java_overload :close, 0
    

    # throws Exception
    def save()
        gameDifficultyFactory = ::Org::Allbinary::Game::Configuration::Persistance::GameDifficultyFactory.getInstance()
        gameDifficultyFactory.setLevel(self.getSelectedId())
    end
    java_overload :save, 0
    

    def initCommands(cmdListener)
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def update()
        self.deleteAll()
        self.add(@list, "Difficulty", ::Javax::Microedition::Lcdui::Choice::EXCLUSIVE)
        GameDifficultyOptions.superclass.java_super_method(:update, 0).bind(self).call()
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
        _METHOD_NAME = "addChoiceGroup"
        _NAME = "Adding Choice: "
        choiceGroup = ::Javax::Microedition::Lcdui::ChoiceGroup.new(name, option, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance(), ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE_ARRAY)
        size = list.size()
        anyType = nil
        (0...size).each do |index|
            anyType = list.objectArray[index]
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(_NAME).append(anyType.to_s).to_s, self, _METHOD_NAME)
            choiceGroup.append(anyType.to_s, ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE)
        end
        return choiceGroup
    end
    java_overload :getChoiceGroup, 3
    

    def setSelectedId(id)
        choiceGroup = self.get(0)
        choiceGroup.setSelectedIndex(id, true)
    end
    java_overload :setSelectedId, 1
    

    def getSelectedId()
        choiceGroup = self.get(0)
        return choiceGroup.getSelectedIndex()
    end
    java_overload :getSelectedId, 0
    

    def getSelectedText()
        choiceGroup = self.get(0)
        value = (choiceGroup.getString(choiceGroup.getSelectedIndex())).to_s.to_i
        return value
    end
    java_overload :getSelectedText, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Choice, "javax/microedition/lcdui/Choice" unless const_defined?(:Choice, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup" unless const_defined?(:ChoiceGroup, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; autoload :MIDPUtil, "org/allbinary/MIDPUtil" unless const_defined?(:MIDPUtil, false); end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :GameDifficultyFactory, "org/allbinary/game/configuration/persistance/GameDifficultyFactory" unless const_defined?(:GameDifficultyFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end


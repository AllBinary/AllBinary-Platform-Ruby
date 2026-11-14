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

require "org/allbinary/graphics/displayable/screen/CommandForm"

class LoadGameForm < CommandForm
    attr_accessor :meUtil, :areChoices

    def initialize_fields
        @meUtil = MEUtil.getInstance()
        @areChoices = false
    end
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.update()
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        gameCommandsFactory = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.LOAD_FILE)
        self.addCommand(gameCommandsFactory.DELETE_FILE)
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    # throws Exception
    def update()
        list = GamePersistanceSingleton.getInstance().getIds()
        self.deleteAll()
        if list.size() > 0
            self.add(list, "Select A Saved Game", Choice::EXCLUSIVE)
            @areChoices = true
        else
            @meUtil.appendItem(self, StringItem.new("No Saved Games", StringUtil.getInstance().EMPTY_STRING, Item::PLAIN))
            @areChoices = false
        end
        super()
    end
    

    def add(list, name, option)
        choiceGroup = self.getChoiceGroup(list, name, option)
        if list.size() > 0
            choiceGroup.setSelectedIndex(0, true)
        end
        @meUtil.appendItem(self, choiceGroup)
    end
    

    def getChoiceGroup(list, name, option)
        _METHOD_NAME = "getChoiceGroup"
        _ADDING_CHOICE = "Adding Choice: "
        choiceGroup = ChoiceGroup.new(name, option, StringUtil.getInstance().getArrayInstance(), NullImage::NULL_IMAGE_ARRAY)
        size = list.size()
        (0...size).each do |index|
            anyType = list.objectArray[index]
            @logUtil.putF(StringMaker.new().append(_ADDING_CHOICE).append(anyType.to_s).to_s, self, _METHOD_NAME)
            choiceGroup.append(anyType.to_s, NullImage::NULL_IMAGE)
        end
        return choiceGroup
    end
    

    def getSelectedId()
        if @areChoices
            choiceGroup = self.get(0)
            return choiceGroup.getSelectedIndex()
        else
            return -1
        end
    end
    

    def getSelectedText()
        if @areChoices
            choiceGroup = self.get(0)
            value = (choiceGroup.getString(choiceGroup.getSelectedIndex())).to_s.to_i
            return value
        else
            return -1
        end
    end
end

autoload :Choice, "javax/microedition/lcdui/Choice"
autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Item, "javax/microedition/lcdui/Item"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :StringItem, "javax/microedition/lcdui/StringItem"
autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory"
autoload :GamePersistanceSingleton, "org/allbinary/game/configuration/persistance/GamePersistanceSingleton"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :MEUtil, "org/allbinary/logic/MEUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"


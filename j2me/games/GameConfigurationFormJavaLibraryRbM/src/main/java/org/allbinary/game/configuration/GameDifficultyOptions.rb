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
# require "javax/microedition/lcdui/ChoiceGroup"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/graphics/displayable/screen/CommandForm"

class GameDifficultyOptions < CommandForm
    attr_accessor :meUtil, :list

    def initialize_fields
        @meUtil = MEUtil.getInstance()
        @list = nil
    end
    

    def initialize(commandListener, title, list, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @list = list
        self.update()
        self.initCommands(commandListener)
        gameDifficultyFactory = GameDifficultyFactory.getInstance()
        self.setSelectedId(gameDifficultyFactory.getLevel())
    end
    

    def open()
        super()
    end
    

    # throws Exception
    def close()
        super()
        self.save()
    end
    

    # throws Exception
    def save()
        gameDifficultyFactory = GameDifficultyFactory.getInstance()
        gameDifficultyFactory.setLevel(self.getSelectedId())
    end
    

    def initCommands(cmdListener)
        gameCommandsFactory = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    # throws Exception
    def update()
        self.deleteAll()
        self.add(@list, "Difficulty", Choice::EXCLUSIVE)
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
        _METHOD_NAME = "addChoiceGroup"
        _NAME = "Adding Choice: "
        choiceGroup = ChoiceGroup.new(name, option, StringUtil.getInstance().getArrayInstance(), NullImage::NULL_IMAGE_ARRAY)
        size = list.size()
        anyType = nil
        (0...size).each do |index|
            anyType = list.objectArray[index]
            @logUtil.putF(StringMaker.new().append(_NAME).append(anyType.to_s).to_s, self, _METHOD_NAME)
            choiceGroup.append(anyType.to_s, NullImage::NULL_IMAGE)
        end
        return choiceGroup
    end
    

    def setSelectedId(id)
        choiceGroup = self.get(0)
        choiceGroup.setSelectedIndex(id, true)
    end
    

    def getSelectedId()
        choiceGroup = self.get(0)
        return choiceGroup.getSelectedIndex()
    end
    

    def getSelectedText()
        choiceGroup = self.get(0)
        value = (choiceGroup.getString(choiceGroup.getSelectedIndex())).to_s.to_i
        return value
    end
end

require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/configuration/persistance/GameDifficultyFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/MEUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"


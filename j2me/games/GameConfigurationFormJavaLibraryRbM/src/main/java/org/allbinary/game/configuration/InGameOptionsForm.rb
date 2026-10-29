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
require "org/allbinary/graphics/displayable/screen/CommandForm"

class InGameOptionsForm < CommandForm
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        gameFeatureFormUtil = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(self, InGameFeatureChoiceGroups.getExclusiveInstance().get(), Choice::EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(self, InGameFeatureChoiceGroups.getMultipleInstance().get(), Choice::MULTIPLE)
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(InGameOptionsForm::DEFAULT)
        self.setCommandListener(cmdListener)
    end
end

require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/configuration/feature/GameFeatureFormUtil"
require "org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/string/StringUtil"

class InGameOptionsForm
    DISPLAY = Command.new("Options In Game", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
    SAVE = Command.new("Save", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
    DEFAULT = Command.new("Default", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
end


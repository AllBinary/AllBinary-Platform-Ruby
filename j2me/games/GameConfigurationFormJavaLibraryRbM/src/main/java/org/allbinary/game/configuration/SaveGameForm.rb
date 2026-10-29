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

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/TextField"
require "org/allbinary/graphics/displayable/screen/CommandForm"

class SaveGameForm < CommandForm
    attr_accessor :meUtil

    def initialize_fields
        @meUtil = MEUtil.getInstance()
    end
    

    # throws Exception
    def self.createForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        SaveGameForm::FORM = SaveGameForm.new(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        return SaveGameForm::FORM
    end
    

    def self.getInstance()
        return SaveGameForm::FORM
    end
    

    def initialize(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        timeString = (ABSystemWrapper.getInstance().currentTimeMillis()).to_s
        @meUtil.appendItem(self, TextField.new("Name: ", timeString, 30, TextField::ANY))
        self.initCommands(commandListener)
    end
    

    def initCommands(cmdListener)
        gameCommandsFactory = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.SAVE)
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
end

require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/ABSystemWrapper"
require "org/allbinary/logic/MEUtil"

class SaveGameForm
    FORM = CommandForm.getNullCommandForm()
end


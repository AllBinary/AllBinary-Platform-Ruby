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
# package org.allbinary.game.displayable.screen

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/TextField"
require "org/allbinary/graphics/form/item/CustomTextBox"

class LicenseRegistrationTextBox < CustomTextBox
    attr_accessor :logUtil, :pleaseWaitPaintable, :paintable

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @pleaseWaitPaintable = SimpleTextPaintable.new(@commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE)
        @paintable = NullPaintable.getInstance()
    end
    

    def initialize(cmdListener, backgrounBasicColor, foregroundBasicColor)
        super(cmdListener, "Enter Registration Code:", StringUtil.getInstance().EMPTY_STRING, 60, TextField::ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        initialize_fields
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(GameCommandsFactory.getInstance().TOGGLE_KEYBOARD)
        self.addCommand(SUBMIT_COMMAND)
        self.setCommandListener(cmdListener)
    end
    

    def open()
        begin
            virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
            virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "open", e)
        end
        super()
        @paintable = NullPaintable.getInstance()
        self.repaint()
    end
    

    # throws Exception
    def close()
        begin
            virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
            virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.HIDE_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "open", e)
        end
        @paintable = @pleaseWaitPaintable
        self.repaint()
        super()
    end
    

    def paint(graphics)
        super(graphics)
        @paintable.paint(graphics)
    end
    

    def submit()
        commandListener = self.getCustomCommandListener()
        commandListener.commandAction(SUBMIT_COMMAND, self)
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/graphics/paint/SimpleTextPaintable"
require "org/allbinary/input/event/VirtualKeyboardEventHandler"

class LicenseRegistrationTextBox
    DISPLAY_COMMAND = Command.new("Register", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 3)
    SUBMIT_COMMAND = Command.new("Submit", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 3)
end


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
# package org.allbinary.game.score.displayable

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/TextField"
require "org/allbinary/graphics/form/item/CustomTextBox"

class HighScoreTextBox < CustomTextBox
    attr_accessor :virtualKeyboardEventHandler, :highScoreUtil, :pleaseWait, :paintable, :submitted

    def initialize_fields
        @virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
        @highScoreUtil = nil
        @pleaseWait = SimpleTextPaintable.new(@commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE)
        @paintable = NullPaintable.getInstance()
        @submitted = false
    end
    

    def initialize(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor)
        super(cmdListener, "New High Score Enter Name:", name, 12, TextField::ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        initialize_fields
        @highScoreUtil = HighScoreUtil.new(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if operatingSystemInterface.isOverScan()
            username = InApplicationPurchaseFactory.getInstance().getUserName()
            if username != nil
                self.getTextFieldItem().setString(username)
            else
                self.getTextFieldItem().setString("NoGamerInfo")
            end
        end
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        PostGameCommandFactory.getInstance().addCommands(self)
        self.addCommand(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND)
        self.setCommandListener(cmdListener)
    end
    

    def open()
        @virtualKeyboardEventHandler.open()
        @paintable = NullPaintable.getInstance()
        super()
    end
    

    # throws Exception
    def close()
        @virtualKeyboardEventHandler.close()
        @paintable = @pleaseWait
        @repaintBehavior.onChangeRepaint(self)
        super()
        self.removeCommand(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND)
        self.update()
        if @submitted
            @highScoreUtil.saveHighScore()
        else
        end
        @paintable = NullPaintable.getInstance()
        @repaintBehavior.onChangeRepaint(self)
    end
    

    # throws Exception
    def update()
        name = self.getTextFieldItem().getString()
        @highScoreUtil.update(name)
        super()
    end
    

    def paint(graphics)
        super(graphics)
        @paintable.paint(graphics)
    end
    

    def saveHighScore()
        @highScoreUtil.saveHighScore()
    end
    

    def submit()
        @highScoreUtil.submit(self)
    end
end

require "org/allbinary/PostGameCommandFactory"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/score/HighScore"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"
require "org/allbinary/game/score/HighScoresFactoryInterface"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/graphics/paint/SimpleTextPaintable"
require "org/allbinary/input/event/VirtualKeyboardEventHandler"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory"
require "org/allbinary/game/score/displayable/HighScoreUtil"


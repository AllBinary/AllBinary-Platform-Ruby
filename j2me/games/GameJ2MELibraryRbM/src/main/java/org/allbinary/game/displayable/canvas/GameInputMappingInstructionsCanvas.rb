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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"

class GameInputMappingInstructionsCanvas < GameCommandCanvas
    attr_accessor :drawStringUtil, :TITLE, :instructions, :colorFillPaintable, :anchor

    def initialize_fields
        @drawStringUtil = DrawStringUtil.getInstance()
        @TITLE = "Input Instructions"
        @instructions = ["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."]
        @colorFillPaintable = nil
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(commandListener, allBinaryGameLayerManager)
        super(commandListener, GameInputMappingInstructionsCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameInputMappingInstructionsCanvas::CLOSE)
        self.setCommandListener(cmdListener)
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        @colorFillPaintable.paint(graphics)
        halfWidth = @displayInfo.getLastHalfWidth()
        beginWidth = (graphics.getFont().stringWidth(@TITLE) >> 1)
        graphics.setColor(@foregroundColor)
        graphics.drawString(@TITLE, halfWidth - beginWidth, @fontHeight, @anchor)
        @drawStringUtil.drawCenterStrings(graphics, @instructions, @displayInfo.getLastWidth(), @fontHeight, halfWidth, 3 * @fontHeight)
        super(graphics)
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/paint/ColorFillBasePaintable"
require "org/allbinary/game/paint/ColorFillPaintableFactory"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/draw/DrawStringUtil"
require "org/allbinary/logic/string/StringUtil"

class GameInputMappingInstructionsCanvas
    DISPLAY = Command.new("Help", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
    CLOSE = Command.new("Close", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1)
    NAME = "GameInputMappingInstructionsCanvas"
end


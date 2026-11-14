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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "GameInputMappingInstructionsCanvas")
        begin
            const_set(:DISPLAY, Command.new("Help", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1))
            const_set(:CLOSE, Command.new("Close", StringUtil.getInstance().EMPTY_STRING, Command::SCREEN, 1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameInputMappingInstructionsCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DISPLAY, :CLOSE, :NAME].include?(name)
        end
        super
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"
autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable"
autoload :ColorFillPaintableFactory, "org/allbinary/game/paint/ColorFillPaintableFactory"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :DrawStringUtil, "org/allbinary/graphics/draw/DrawStringUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    GameInputMappingInstructionsCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GameInputMappingInstructionsCanvas < GameCommandCanvas
    attr_accessor :drawStringUtil, :TITLE, :instructions, :colorFillPaintable, :anchor

    def jfields_org_allbinary_game_displayable_canvas_GameInputMappingInstructionsCanvas
        @drawStringUtil = ::Org::Allbinary::Graphics::Draw::DrawStringUtil.getInstance()
        @TITLE = "Input Instructions"
        @instructions = ["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."]
        @colorFillPaintable = nil unless instance_variable_defined?(:@colorFillPaintable)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(commandListener, allBinaryGameLayerManager)
        super(commandListener, GameInputMappingInstructionsCanvas::NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        jfields_org_allbinary_game_displayable_canvas_GameInputMappingInstructionsCanvas
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @colorFillPaintable = ::Org::Allbinary::Game::Paint::ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommand(GameInputMappingInstructionsCanvas::CLOSE)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        @colorFillPaintable.paint(graphics)
        halfWidth = @displayInfo.getLastHalfWidth()
        beginWidth = (graphics.getFont().stringWidth(@TITLE) >> 1)
        graphics.setColor(@foregroundColor)
        graphics.drawString(@TITLE, halfWidth - beginWidth, @fontHeight, @anchor)
        @drawStringUtil.drawCenterStrings(graphics, @instructions, @displayInfo.getLastWidth(), @fontHeight, halfWidth, 3 * @fontHeight)
        GameInputMappingInstructionsCanvas.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paint, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "GameInputMappingInstructionsCanvas")
        begin
            const_set(:DISPLAY, ::Javax::Microedition::Lcdui::Command.new("Help", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1))
            const_set(:CLOSE, ::Javax::Microedition::Lcdui::Command.new("Close", ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Javax::Microedition::Lcdui::Command::SCREEN, 1))
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

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable" unless const_defined?(:ColorFillBasePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillPaintableFactory, "org/allbinary/game/paint/ColorFillPaintableFactory" unless const_defined?(:ColorFillPaintableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Draw; autoload :DrawStringUtil, "org/allbinary/graphics/draw/DrawStringUtil" unless const_defined?(:DrawStringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    GameInputMappingInstructionsCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end


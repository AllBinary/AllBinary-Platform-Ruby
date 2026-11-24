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
# package org.allbinary.game.score

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/score/HighScoresCanvasInputProcessor"

module ::Org; module Allbinary; module Game; module Score

class HighScoresCanvasLevelChangeInputProcessor < HighScoresCanvasInputProcessor
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :INSTRUCTIONS, :myFontProcessor, :anchor, :fontHeight

    def jfields_org_allbinary_game_score_HighScoresCanvasLevelChangeInputProcessor
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)"
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @fontHeight = 0
    end
    

    def initialize(highScoresCanvas)
        super(highScoresCanvas)
        jfields_org_allbinary_game_score_HighScoresCanvasLevelChangeInputProcessor
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def open()
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().addListener(self)
    end
    java_overload :open, 0
    

    def close()
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().removeListener(self)
    end
    java_overload :close, 0
    

    def update()
        java_monitor.synchronize do
        list = self.getGameKeyEventList()
        size = list.size()
        (0...size).each do |index|
            anyType = list.objectArray[index]
            key = ::Org::Allbinary::Game::Input::Event::GameKeyEventUtil.getKey(anyType)
            if key == ::Javax::Microedition::Lcdui::Canvas::RIGHT
                self.getHighScoresCanvas().getGameInfo().nextGameLevel()
            elsif key == ::Javax::Microedition::Lcdui::Canvas::LEFT
                self.getHighScoresCanvas().getGameInfo().previousGameLevel()
            end
            self.getHighScoresCanvas().executeUpdate()
        end
        list.clear()
        end
    end
    java_overload :update, 0
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        width = @displayInfoSingleton.getLastWidth()
        topScoresWidth = (graphics.getFont().stringWidth(@INSTRUCTIONS) >> 1)
        graphics.drawString(@INSTRUCTIONS, (width >> 1) - topScoresWidth, @fontHeight * 2, @anchor)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventHandler, "org/allbinary/game/input/event/GameKeyEventHandler" unless const_defined?(:GameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventUtil, "org/allbinary/game/input/event/GameKeyEventUtil" unless const_defined?(:GameKeyEventUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas" unless const_defined?(:HighScoresCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end


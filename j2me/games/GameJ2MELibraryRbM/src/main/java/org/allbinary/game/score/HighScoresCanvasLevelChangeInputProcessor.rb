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
# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/score/HighScoresCanvasInputProcessor"

class HighScoresCanvasLevelChangeInputProcessor < HighScoresCanvasInputProcessor
    include UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :INSTRUCTIONS, :myFontProcessor, :anchor, :fontHeight

    def initialize_fields
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)"
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @anchor = Anchor::TOP_LEFT
        @fontHeight = 0
    end
    

    def initialize(highScoresCanvas)
        super(highScoresCanvas)
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def open()
        GameKeyEventHandler.getInstance().addListener(self)
    end
    

    def close()
        GameKeyEventHandler.getInstance().removeListener(self)
    end
    

    def update()
        java_monitor.synchronize do
        list = self.getGameKeyEventList()
        size = list.size()
        (0...size).each do |index|
            anyType = list.objectArray[index]
            key = GameKeyEventUtil.getKey(anyType)
            if key == Canvas::RIGHT
                self.getHighScoresCanvas().getGameInfo().nextGameLevel()
            elsif key == Canvas::LEFT
                self.getHighScoresCanvas().getGameInfo().previousGameLevel()
            end
            self.getHighScoresCanvas().executeUpdate()
        end
        list.clear()
        end
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        width = @displayInfoSingleton.getLastWidth()
        topScoresWidth = (graphics.getFont().stringWidth(@INSTRUCTIONS) >> 1)
        graphics.drawString(@INSTRUCTIONS, (width >> 1) - topScoresWidth, @fontHeight * 2, @anchor)
    end
end

require "org/allbinary/game/input/event/GameKeyEventHandler"
require "org/allbinary/game/input/event/GameKeyEventUtil"
require "org/allbinary/game/score/displayable/HighScoresCanvas"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/util/BasicArrayList"


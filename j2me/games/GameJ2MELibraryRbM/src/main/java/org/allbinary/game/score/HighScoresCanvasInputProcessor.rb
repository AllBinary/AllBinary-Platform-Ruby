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
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/input/PlayerGameInput"

class HighScoresCanvasInputProcessor < PlayerGameInput
    attr_accessor :highScoresCanvas

    def initialize_fields
        @highScoresCanvas = nil
    end
    

    def initialize(highScoresCanvas)
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
        initialize_fields
        @highScoresCanvas = highScoresCanvas
    end
    

    def open()
    end
    

    def close()
    end
    

    def onPressGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        super(gameKeyEvent)
        self.update()
        end
    end
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        super(gameKeyEvent)
        self.update()
        end
    end
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        super(gameKeyEvent)
        self.update()
        end
    end
    

    def paint(graphics)
    end
    

    def getHighScoresCanvas()
        return @highScoresCanvas
    end
end

require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/score/displayable/HighScoresCanvas"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"


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

require "org/allbinary/game/input/PlayerGameInput"
require "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener"

class BasicMenuInputProcessor < PlayerGameInput
    include BaseMotionGestureEventListener
    attr_accessor :motionGestureEventList, :canvas

    def initialize_fields
        @motionGestureEventList = BasicArrayListD.new()
        @canvas = NullCanvas::NULL_CANVAS
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas)
        super(gameKeyEventList, BasicArrayListD.new(), playerInputId)
        initialize_fields
        @canvas = gameCanvas
    end
    

    def onMotionGestureEvent(motionGestureEvent)
        @motionGestureEventList.add(motionGestureEvent)
    end
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
    end
    

    def setCanvas(canvas)
        @canvas = canvas
    end
    

    def getCanvas()
        return @canvas
    end
    

    # throws Exception
    def processInputList()
        return -1
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"


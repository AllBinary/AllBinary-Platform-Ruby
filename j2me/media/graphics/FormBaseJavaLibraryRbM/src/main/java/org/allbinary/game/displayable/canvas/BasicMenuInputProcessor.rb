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
require "org/allbinary/game/input/PlayerGameInput"
require "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class BasicMenuInputProcessor < ::Org::Allbinary::Game::Input::PlayerGameInput
    include ::Org::Allbinary::Input::Motion::Gesture::Observer::BaseMotionGestureEventListener
    attr_accessor :motionGestureEventList, :canvas

    def jfields_org_allbinary_game_displayable_canvas_BasicMenuInputProcessor
        @motionGestureEventList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @canvas = ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS
    end
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas)
        super(gameKeyEventList, ::Org::Allbinary::Util::BasicArrayListD.new(), playerInputId)
        jfields_org_allbinary_game_displayable_canvas_BasicMenuInputProcessor
        @canvas = gameCanvas
    end
    

    def onMotionGestureEvent(motionGestureEvent)
        @motionGestureEventList.add(motionGestureEvent)
    end
    java_overload :onMotionGestureEvent, 1
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
    end
    java_overload :onScrolledMotionGestureEvent, 1
    

    def setCanvas(canvas)
        @canvas = canvas
    end
    java_overload :setCanvas, 1
    

    def getCanvas()
        return @canvas
    end
    java_overload :getCanvas, 0
    

    # throws Exception
    def processInputList()
        return -1
    end
    java_overload :processInputList, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end


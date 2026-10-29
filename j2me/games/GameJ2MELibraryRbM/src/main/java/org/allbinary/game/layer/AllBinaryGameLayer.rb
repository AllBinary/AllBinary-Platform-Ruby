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
# package org.allbinary.game.layer

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/view/event/ViewPositionEventListenerInterface"

class AllBinaryGameLayer < AllBinaryLayer
    include ViewPositionEventListenerInterface
    include OpenGLSurfaceChangedInterface
    attr_accessor :commonStrings, :basicSetColorUtil, :RED, :paintable, :gameKeyEventList

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @RED = BasicColorFactory.getInstance().RED
        @paintable = (SWTUtil.isSWT ? Class.new(Paintable.is_a?(Class) ? Paintable : Object) do
        include(Paintable) unless Paintable.is_a?(Class)
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @BLACK = BasicColorFactory.getInstance().BLACK
        

        def paint(graphics)
            @basicSetColorUtil.setBasicColorP(graphics, @BLACK)
        end
    end.new() : NullPaintable.getInstance())
        @gameKeyEventList = BasicArrayListD.new()
    end
    

    def initialize(name, layerInfo, viewPosition)
        super(name, layerInfo, viewPosition)
        initialize_fields
    end
    

    # throws Exception
    def set(gl)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def move()
    end
    

    def getGameKeyEventList()
        return @gameKeyEventList
    end
    

    # throws Exception
    def processInput(allBinaryLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onViewPositionChangeEvent()
        self.onChangeEvent(@viewPositionEvent)
    end
    

    # throws Exception
    def onChangeEvent(layerManagerEvent)
        if GameLayerUtil.isOnScreen(self)
            self.setVisible(true)
        else
            self.setVisible(false)
        end
    end
    

    def paintFirst(graphics)
        @paintable.paint(graphics)
    end
    

    def paintDebug(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @basicSetColorUtil.setBasicColorP(graphics, @RED)
        graphics.drawRect(viewX, viewY, self.getWidth(), self.getHeight())
    end
    

    def setWidth(width)
        self.class.superclass.instance_method(:setLayerWidth).bind(self).call(width)
        self.setHalfWidth(width >> 1)
    end
    

    def setHeight(height)
        self.class.superclass.instance_method(:setLayerHeight).bind(self).call(height)
        self.setHalfHeight(height >> 1)
    end
end

require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/BasicColorSetUtil"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/view/event/ViewPositionEvent"
require "org/allbinary/game/layer/GameLayerUtil"
require "org/allbinary/game/layer/SWTUtil"


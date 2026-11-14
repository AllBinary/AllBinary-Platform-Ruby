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

require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/view/event/ViewPositionEventListenerInterface"

class AllBinaryGameLayer < AllBinaryLayer
    include ViewPositionEventListenerInterface
    include OpenGLSurfaceChangedInterface
    attr_accessor :commonStrings, :basicSetColorUtil, :RED, :paintable, :gameKeyEventList
    #Named instead of anonymous so the languages generated from this Java can convert it
    class SWTBlackPaintable < Paintable
        attr_accessor :basicSetColorUtil, :BLACK

        def initialize_fields
            @basicSetColorUtil = BasicColorSetUtil.getInstance()
            @BLACK = BasicColorFactory.getInstance().BLACK
        end

        def initialize
            super()
            initialize_fields
        end
        

        def paint(graphics)
            @basicSetColorUtil.setBasicColorP(graphics, @BLACK)
        end
    end

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @RED = BasicColorFactory.getInstance().RED
        @paintable = AllBinaryGameLayer.createPaintable()
        @gameKeyEventList = BasicArrayListD.new()
    end
    

    def self.createPaintable()
        if SWTUtil.isSWT
            return SWTBlackPaintable.new()
        end
        return NullPaintable.getInstance()
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
        AllBinaryGameLayer.superclass.instance_method(:setLayerWidth).bind(self).call(width)
        self.setHalfWidth(width >> 1)
    end
    

    def setHeight(height)
        AllBinaryGameLayer.superclass.instance_method(:setLayerHeight).bind(self).call(height)
        self.setHalfHeight(height >> 1)
    end
end

autoload :GL, "javax/microedition/khronos/opengles/GL"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil"
autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"
autoload :ViewPositionEvent, "org/allbinary/view/event/ViewPositionEvent"
autoload :GameLayerUtil, "org/allbinary/game/layer/GameLayerUtil"
autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil"


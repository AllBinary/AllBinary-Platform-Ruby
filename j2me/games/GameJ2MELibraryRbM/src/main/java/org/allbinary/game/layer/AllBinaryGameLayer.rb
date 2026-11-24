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

require "java/lang/JavaOverload"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/view/event/ViewPositionEventListenerInterface"

module ::Org; module Allbinary; module Game; module Layer

class AllBinaryGameLayer < ::Org::Allbinary::Layer::AllBinaryLayer
    include ::Org::Allbinary::View::Event::ViewPositionEventListenerInterface
    include ::Org::Allbinary::Image::Opengles::OpenGLSurfaceChangedInterface
    attr_accessor :commonStrings, :basicSetColorUtil, :RED, :paintable, :gameKeyEventList

    def jfields_org_allbinary_game_layer_AllBinaryGameLayer
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @RED = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED
        @paintable = AllBinaryGameLayer.createPaintable()
        @gameKeyEventList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.createPaintable()
        if SWTUtil.isSWT
            return SWTBlackPaintable.new()
        end
        return ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end
    

    def initialize(name, layerInfo, viewPosition)
        super(name, layerInfo, viewPosition)
        jfields_org_allbinary_game_layer_AllBinaryGameLayer
    end
    

    # throws Exception
    def set(gl)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :set, 1
    

    def move()
    end
    java_overload :move, 0
    

    def getGameKeyEventList()
        return @gameKeyEventList
    end
    java_overload :getGameKeyEventList, 0
    

    # throws Exception
    def processInput(allBinaryLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :processInput, 1
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :processTick, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onViewPositionChangeEvent()
        self.onChangeEvent(@viewPositionEvent)
    end
    java_overload :onViewPositionChangeEvent, 0
    

    # throws Exception
    def onChangeEvent(layerManagerEvent)
        if GameLayerUtil.isOnScreen(self)
            self.setVisible(true)
        else
            self.setVisible(false)
        end
    end
    java_overload :onChangeEvent, 1
    

    def paintFirst(graphics)
        @paintable.paint(graphics)
    end
    java_overload :paintFirst, 1
    

    def paintDebug(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        @basicSetColorUtil.setBasicColorP(graphics, @RED)
        graphics.drawRect(viewX, viewY, self.getWidth(), self.getHeight())
    end
    java_overload :paintDebug, 1
    

    def setWidth(width)
        AllBinaryGameLayer.superclass.java_super_method(:setLayerWidth, 1).bind(self).call(width)
        self.setHalfWidth(width >> 1)
    end
    java_overload :setWidth, 1
    

    def setHeight(height)
        AllBinaryGameLayer.superclass.java_super_method(:setLayerHeight, 1).bind(self).call(height)
        self.setHalfHeight(height >> 1)
    end
    java_overload :setHeight, 1
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
module ::Org; module Allbinary; module View; module Event; autoload :ViewPositionEvent, "org/allbinary/view/event/ViewPositionEvent" unless const_defined?(:ViewPositionEvent, false); end; end; end; end
autoload :GameLayerUtil, "org/allbinary/game/layer/GameLayerUtil" unless const_defined?(:GameLayerUtil, false)
autoload :SWTBlackPaintable, "org/allbinary/game/layer/SWTBlackPaintable" unless const_defined?(:SWTBlackPaintable, false)
autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil" unless const_defined?(:SWTUtil, false)

end; end; end; end


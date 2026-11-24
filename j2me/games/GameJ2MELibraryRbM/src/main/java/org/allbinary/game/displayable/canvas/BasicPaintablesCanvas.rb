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

class BasicPaintablesCanvas < GameCommandCanvas
    attr_accessor :paintableArray, :colorFillPaintable

    def jfields_org_allbinary_game_displayable_canvas_BasicPaintablesCanvas
        @paintableArray = nil unless instance_variable_defined?(:@paintableArray)
        @colorFillPaintable = nil unless instance_variable_defined?(:@colorFillPaintable)
    end
    

    def initialize(cmdListener, name, allBinaryGameLayerManager, paintableArray)
        super(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        jfields_org_allbinary_game_displayable_canvas_BasicPaintablesCanvas
        @paintableArray = paintableArray
        @colorFillPaintable = ::Org::Allbinary::Game::Paint::ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    end
    

    def paint(graphics)
        @colorFillPaintable.paint(graphics)
        graphics.setColor(@foregroundColor)
        (@paintableArray.length - 1).step(0, -(1)) do |index|
            @paintableArray[index].paint(graphics)
        end
        BasicPaintablesCanvas.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable" unless const_defined?(:ColorFillBasePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillPaintableFactory, "org/allbinary/game/paint/ColorFillPaintableFactory" unless const_defined?(:ColorFillPaintableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end

end; end; end; end; end


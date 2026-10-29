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

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/displayable/canvas/GameCommandCanvas"

class BasicPaintablesCanvas < GameCommandCanvas
    attr_accessor :paintableArray, :colorFillPaintable

    def initialize_fields
        @paintableArray = nil
        @colorFillPaintable = nil
    end
    

    def initialize(cmdListener, name, allBinaryGameLayerManager, paintableArray)
        super(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initialize_fields
        @paintableArray = paintableArray
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    end
    

    def paint(graphics)
        @colorFillPaintable.paint(graphics)
        graphics.setColor(@foregroundColor)
        (@paintableArray.length - 1).step(0, -(1)) do |index|
            @paintableArray[index].paint(graphics)
        end
        super(graphics)
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/paint/ColorFillBasePaintable"
require "org/allbinary/game/paint/ColorFillPaintableFactory"
require "org/allbinary/graphics/paint/Paintable"


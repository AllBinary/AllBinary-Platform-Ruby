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

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullCanvas"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/graphics/paint/ProcessPaintable"

class BufferedGameCanvasPaintHelper < ProcessPaintable
    attr_accessor :gameCanvas, :offScreenImage, :previousImage, :circularIndexUtil, :drawCircularIndexUtil, :anchor

    def initialize_fields
        @gameCanvas = NullCanvas::NULL_CANVAS
        @offScreenImage = Array.new(BufferedGameCanvasPaintHelper::MAX_IMAGES, nil)
        @previousImage = NullImage::NULL_IMAGE
        @circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper::MAX_IMAGES)
        @drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(BufferedGameCanvasPaintHelper::MAX_IMAGES - 1, BufferedGameCanvasPaintHelper::MAX_IMAGES)
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(gameCanvas)
        super()
        initialize_fields
        raise StandardError.new("No Longer Used")
    end
    

    def process()
        myCanvas = (@gameCanvas)
        myCanvas.draw(@offScreenImage[@circularIndexUtil.getIndex()].getGraphics())
        @circularIndexUtil.next_()
        @drawCircularIndexUtil.next_()
    end
    

    def paint(graphics)
        @previousImage = @offScreenImage[@drawCircularIndexUtil.getIndex()]
        graphics.drawImage(@previousImage, 0, 0, @anchor)
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

class BufferedGameCanvasPaintHelper
    MAX_IMAGES = 4
end


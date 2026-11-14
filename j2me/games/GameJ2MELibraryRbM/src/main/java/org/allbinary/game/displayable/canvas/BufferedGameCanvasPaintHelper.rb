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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAX_IMAGES, 4)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BufferedGameCanvasPaintHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAX_IMAGES].include?(name)
        end
        super
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"
autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

begin
    BufferedGameCanvasPaintHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


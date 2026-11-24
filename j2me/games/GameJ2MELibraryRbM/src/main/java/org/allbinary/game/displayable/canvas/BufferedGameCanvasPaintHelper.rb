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
require "org/allbinary/graphics/paint/ProcessPaintable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class BufferedGameCanvasPaintHelper < ::Org::Allbinary::Graphics::Paint::ProcessPaintable
    attr_accessor :gameCanvas, :offScreenImage, :previousImage, :circularIndexUtil, :drawCircularIndexUtil, :anchor

    def jfields_org_allbinary_game_displayable_canvas_BufferedGameCanvasPaintHelper
        @gameCanvas = ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS
        @offScreenImage = Array.new(BufferedGameCanvasPaintHelper::MAX_IMAGES, nil)
        @previousImage = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper::MAX_IMAGES)
        @drawCircularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstanceAt(BufferedGameCanvasPaintHelper::MAX_IMAGES - 1, BufferedGameCanvasPaintHelper::MAX_IMAGES)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(gameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_BufferedGameCanvasPaintHelper
        raise StandardError.new("No Longer Used")
    end
    

    def process()
        myCanvas = (@gameCanvas)
        myCanvas.draw(@offScreenImage[@circularIndexUtil.getIndex()].getGraphics())
        @circularIndexUtil.next_()
        @drawCircularIndexUtil.next_()
    end
    java_overload :process, 0
    

    def paint(graphics)
        @previousImage = @offScreenImage[@drawCircularIndexUtil.getIndex()]
        graphics.drawImage(@previousImage, 0, 0, @anchor)
    end
    java_overload :paint, 1

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

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

begin
    BufferedGameCanvasPaintHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end


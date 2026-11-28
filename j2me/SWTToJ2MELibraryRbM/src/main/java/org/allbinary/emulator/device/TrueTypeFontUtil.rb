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
# package org.allbinary.emulator.device

require "java/lang/JavaOverload"
require "org/allbinary/emulator/device/TrueTypeFontUtilBase"

module ::Org; module Allbinary; module Emulator; module Device

#TTF
class TrueTypeFontUtil < TrueTypeFontUtilBase
    attr_accessor :preResourceImageUtil, :widthFloatArray, :fontImage, :widthScale

    def jfields_org_allbinary_emulator_device_TrueTypeFontUtil
        @preResourceImageUtil = ::Org::Allbinary::Image::PreResourceImageUtil.getInstance()
        @widthFloatArray = nil unless instance_variable_defined?(:@widthFloatArray)
        @fontImage = ::Org::Allbinary::Image::Opengles::OpenGLESImage::NULL_OPENGL_IMAGE
        @widthScale = nil unless instance_variable_defined?(:@widthScale)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super(2)
        jfields_org_allbinary_emulator_device_TrueTypeFontUtil
        if ::Org::Allbinary::AvianUtil.isAvian()
            @widthFloatArray = [1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 961.0, 961.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 952.0, 952.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0]
        else
            @widthFloatArray = [1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0]
        end
        @widthScale = ((@scale == 2) ? 1.2 : 1.0)
    end
    

    def getFontBitmapGL(gl, filename, cellSize, basicColor)
        begin
            if @fontImage == ::Org::Allbinary::Image::Opengles::OpenGLESImage::NULL_OPENGL_IMAGE
                canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
                openGLCapabilities = ::Org::Allbinary::Graphics::Opengles::OpenGLCapabilities.getInstance()
                if openGLCapabilities.isTextureSizeValid(1024) && @scale == 2
                    _FONT_ATLAS_1024 = "/font_1024.png"
                    image = ::Javax::Microedition::Lcdui::Image.createImageFromInputStream(::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getResourceAsStream(_FONT_ATLAS_1024))
                    image.setName(canvasStrings.FONT_ATLAS)
                    @fontImage = @preResourceImageUtil.encapsulate(image)
                elsif openGLCapabilities.isTextureSizeValid(512)
                    _FONT_ATLAS_512 = "/font_512.png"
                    image = ::Javax::Microedition::Lcdui::Image.createImageFromInputStream(::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getResourceAsStream(_FONT_ATLAS_512))
                    image.setName(canvasStrings.FONT_ATLAS)
                    @fontImage = @preResourceImageUtil.encapsulate(image)
                else
                    _FONT_ATLAS_512 = "/font_512.png"
                    image = ::Javax::Microedition::Lcdui::Image.createImageFromInputStream(::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getResourceAsStream(_FONT_ATLAS_512))
                    image.setName(canvasStrings.FONT_ATLAS)
                    @fontImage = @preResourceImageUtil.encapsulate(image)
                end
                return @fontImage
            else
                return @fontImage
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.EXCEPTION, e)
            raise RuntimeError.new()
        end
    end
    java_overload :getFontBitmapGL, 4
    

    def saveFontAtlasAsFile()
        image = self.getFontBitmap(nil, @cellSize, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)
        imageLoader = ::Org::Eclipse::Swt::Graphics::ImageLoader.new()
        width = image.getWidth()
        height = image.getHeight()
        pixels = (Array.new(width * height, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        image.getRGB(pixels, 0, width, 0, 0, width, height)
        imageData = ::Org::Eclipse::Swt::Graphics::ImageData.new(width, height, 32, ::Org::Eclipse::Swt::Graphics::PaletteData.new(0xFF0000, 0xFF00, 0xFF))
        (0...pixels.length).each do |index|
            pixels[index] &= 0xFFFFFF
        end
        (0...height).each do |row|
            imageData.setPixels(0, row, width, pixels, row * width)
        end
        imageData.transparentPixel = imageData.getPixel(0, 0)
        imageLoader.data = [imageData]
        imageLoader.save(::Org::Allbinary::StringPackage::CommonSeps.getInstance().PERIOD + ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().FONT_ATLAS, ::Org::Eclipse::Swt::SWT::IMAGE_PNG)
    end
    java_overload :saveFontAtlasAsFile, 0
    

    def getFontBitmap(filename, cellSize, basicColor)
        cellsPerRow2 = @CELLS_PER_ROW * 2
        cellsPerRow3 = @CELLS_PER_ROW * 3
        cellsPerRow4 = @CELLS_PER_ROW * 4
        cellsPerRow5 = @CELLS_PER_ROW * 5
        cellsPerRow6 = @CELLS_PER_ROW * 6
        cellsPerRow7 = @CELLS_PER_ROW * 7
        image = ::Javax::Microedition::Lcdui::Image.createImage(@textureSize, @textureSize)
        graphics = image.getGraphics()
        graphics.setColor(basicColor.to_i)
        biggestHeight = 0
        bounds = ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(0, 0), cellSize, cellSize)
        x = 0
        y = 0
        (0...@size).each do |index|
            @characterArray[0] = @pattern.charAt(index)
            @_characterWidth[index] = bounds.getMaxX()
            if bounds.getMaxY() - bounds.getPoint().getX() > biggestHeight
                biggestHeight = bounds.getMaxY() - bounds.getPoint().getX()
            end
            x = (index % @CELLS_PER_ROW) * cellSize
            x += (cellSize >> 1)
            x -= (@_characterWidth[index] >> 1)
            y = -cellSize >> 1
            if index >= @CELLS_PER_ROW
                y += cellSize
            end
            if index >= cellsPerRow2
                y += cellSize
            end
            if index >= cellsPerRow3
                y += cellSize
            end
            if index >= cellsPerRow4
                y += cellSize
            end
            if index >= cellsPerRow5
                y += cellSize
            end
            if index >= cellsPerRow6
                y += cellSize
            end
            if index >= cellsPerRow7
                y += cellSize
            end
            y += cellSize
            y -= (cellSize >> 2)
            graphics.drawChar(@characterArray[0], x, y, 0)
        end
        return image
    end
    java_overload :getFontBitmap, 3
    

    def getFontWidths(filename, fontSize)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        (0...@size).each do |index|
            @characterArray[0] = @pattern.charAt(index)
            if @characterArray[0] == " "
                @_characterWidth[index] = (fontSize / 4)
            else
                shortPatternIndex = @shortPattern.indexOf(@characterArray[0])
                w = ((@widthFloatArray[shortPatternIndex] / 75.0)).to_i + 19
                @_characterWidth[index] = w
                if @characterArray[0] == "." || @characterArray[0] == "1"
                    @_characterWidth[index] += 4
                end
                if @characterArray[0] >= "a" && @characterArray[0] < "k"
                    @_characterWidth[index] -= 2
                end
                if @characterArray[0] >= "k" && @characterArray[0] < "v"
                    @_characterWidth[index] -= 4
                end
                if @characterArray[0] >= "v" && @characterArray[0] < "z"
                    @_characterWidth[index] -= 8
                end
                if @characterArray[0] == "D"
                    @_characterWidth[index] -= 4
                end
                if @characterArray[0] >= "A" && @characterArray[0] <= "Z"
                    @_characterWidth[index] -= 2
                end
            end
            @_characterWidth[index] = (((@_characterWidth[index] * @widthScale)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        end
        return @_characterWidth
    end
    java_overload :getFontWidths, 2

    def self.instance()
        TrueTypeFontUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TrueTypeFontUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TrueTypeFontUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TrueTypeFontUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Eclipse; module Swt; autoload :SWT, "org/eclipse/swt/SWT" unless const_defined?(:SWT, false); end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :ImageData, "org/eclipse/swt/graphics/ImageData" unless const_defined?(:ImageData, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :ImageLoader, "org/eclipse/swt/graphics/ImageLoader" unless const_defined?(:ImageLoader, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :PaletteData, "org/eclipse/swt/graphics/PaletteData" unless const_defined?(:PaletteData, false); end; end; end; end
module ::Org; module Allbinary; autoload :AvianUtil, "org/allbinary/AvianUtil" unless const_defined?(:AvianUtil, false); end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLCapabilities, "org/allbinary/graphics/opengles/OpenGLCapabilities" unless const_defined?(:OpenGLCapabilities, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :PreResourceImageUtil, "org/allbinary/image/PreResourceImageUtil" unless const_defined?(:PreResourceImageUtil, false); end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    TrueTypeFontUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


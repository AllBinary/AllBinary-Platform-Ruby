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

# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/emulator/device/TrueTypeFontUtilBase"

#TTF
class TrueTypeFontUtil < TrueTypeFontUtilBase
    attr_accessor :preResourceImageUtil, :widthFloatArray, :fontImage, :widthScale

    def initialize_fields
        @preResourceImageUtil = PreResourceImageUtil.getInstance()
        @widthFloatArray = nil
        @fontImage = OpenGLESImage::NULL_OPENGL_IMAGE
        @widthScale = nil
    end
    

    def self.getInstance()
        return TrueTypeFontUtil.instance
    end
    

    def initialize()
        super(2)
        initialize_fields
        if AvianUtil.isAvian()
            @widthFloatArray = [1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 961.0, 961.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 952.0, 952.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0]
        else
            @widthFloatArray = [1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0]
        end
        @widthScale = ((@scale == 2) ? 1.2 : 1.0)
    end
    

    def getFontBitmapGL(gl, filename, cellSize, basicColor)
        begin
            if @fontImage == OpenGLESImage::NULL_OPENGL_IMAGE
                canvasStrings = CanvasStrings.getInstance()
                openGLCapabilities = OpenGLCapabilities.getInstance()
                if openGLCapabilities.isTextureSizeValid(1024) && @scale == 2
                    _FONT_ATLAS_1024 = "/font_1024.png"
                    image = Image.createImage(ResourceUtil.getInstance().getResourceAsStream(_FONT_ATLAS_1024))
                    image.setName(canvasStrings.FONT_ATLAS)
                    @fontImage = @preResourceImageUtil.encapsulate(image)
                elsif openGLCapabilities.isTextureSizeValid(512)
                    _FONT_ATLAS_512 = "/font_512.png"
                    image = Image.createImage(ResourceUtil.getInstance().getResourceAsStream(_FONT_ATLAS_512))
                    image.setName(canvasStrings.FONT_ATLAS)
                    @fontImage = @preResourceImageUtil.encapsulate(image)
                else
                    _FONT_ATLAS_512 = "/font_512.png"
                    image = Image.createImage(ResourceUtil.getInstance().getResourceAsStream(_FONT_ATLAS_512))
                    image.setName(canvasStrings.FONT_ATLAS)
                    @fontImage = @preResourceImageUtil.encapsulate(image)
                end
                return @fontImage
            else
                return @fontImage
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.EXCEPTION, e)
            raise RuntimeError.new()
        end
    end
    

    def saveFontAtlasAsFile()
        image = self.getFontBitmap(nil, @cellSize, BasicColorFactory.getInstance().WHITE)
        imageLoader = ImageLoader.new()
        imageData = (image).image.getImageData()
        imageData.transparentPixel = imageData.getPixel(0, 0)
        imageLoader.data = [imageData]
        imageLoader.save(CommonSeps.getInstance().PERIOD + CanvasStrings.getInstance().FONT_ATLAS, SWT::IMAGE_PNG)
    end
    

    def getFontBitmap(filename, cellSize, basicColor)
        cellsPerRow2 = @CELLS_PER_ROW * 2
        cellsPerRow3 = @CELLS_PER_ROW * 3
        cellsPerRow4 = @CELLS_PER_ROW * 4
        cellsPerRow5 = @CELLS_PER_ROW * 5
        cellsPerRow6 = @CELLS_PER_ROW * 6
        cellsPerRow7 = @CELLS_PER_ROW * 7
        image = Image.createImage(@textureSize, @textureSize)
        graphics = image.getGraphics()
        graphics.setColor(basicColor.to_i)
        biggestHeight = 0
        bounds = Rectangle.new(PointFactory.getInstance().createXY(0, 0), cellSize, cellSize)
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
            y = -(cellSize >> 1)
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
    

    def getFontWidths(filename, fontSize)
        commonStrings = CommonStrings.getInstance()
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
            @_characterWidth[index] *= @widthScale
        end
        return @_characterWidth
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/eclipse/swt/SWT"
require "org/eclipse/swt/graphics/ImageData"
require "org/eclipse/swt/graphics/ImageLoader"
require "org/microemu/device/swt/SwtMutableImage"
require "org/allbinary/AvianUtil"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/opengles/OpenGLCapabilities"
require "org/allbinary/image/PreResourceImageUtil"
require "org/allbinary/image/opengles/OpenGLESImage"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

class TrueTypeFontUtil
    @@instance = TrueTypeFontUtil.new()
end


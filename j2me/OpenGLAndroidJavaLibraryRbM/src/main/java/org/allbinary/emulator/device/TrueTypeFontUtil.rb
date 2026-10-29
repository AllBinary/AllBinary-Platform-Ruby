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

# require "java/io/File"
# require "java/io/FileOutputStream"
# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/emulator/device/TrueTypeFontUtilBase"

#TTF
class TrueTypeFontUtil < TrueTypeFontUtilBase
    attr_accessor :logUtil, :preResourceImageUtil, :realFontSize, :fontImage

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @preResourceImageUtil = PreResourceImageUtil.getInstance()
        @realFontSize = 18
        @fontImage = OpenGLESImage::NULL_OPENGL_IMAGE
    end
    

    def self.getInstance()
        return TrueTypeFontUtil.instance
    end
    

    def initialize()
        super(1)
        initialize_fields
    end
    

    def saveFontAtlasAsFile()
        begin
            commonStrings = CommonStrings.getInstance()
            file = ResourceUtil.getInstance().getContext().getFilesDir()
            path = file.getAbsolutePath() + CanvasStrings.getInstance().FONT_ATLAS
            @logUtil.putF(path, self, commonStrings.CONSTRUCTOR)
            fos = FileOutputStream.new(path)
            bitmap = (@fontImage.openGLBitmap.getImage()).getBitmap()
            bitmap.compress(Bitmap::CompressFormat.PNG, 100, fos)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.EXCEPTION, e)
        end
    end
    

    def getFontBitmapGL(gl, filename, cellSize, basicColor)
        if @fontImage == OpenGLESImage::NULL_OPENGL_IMAGE
            cellsPerRow2 = @CELLS_PER_ROW * 2
            cellsPerRow3 = @CELLS_PER_ROW * 3
            cellsPerRow4 = @CELLS_PER_ROW * 4
            cellsPerRow5 = @CELLS_PER_ROW * 5
            cellsPerRow6 = @CELLS_PER_ROW * 6
            cellsPerRow7 = @CELLS_PER_ROW * 7
            typeface = Typeface::DEFAULT
            textureSize = self.getAsTextureSize(@CELLS_PER_ROW * cellSize)
            bitmap = Bitmap.createBitmap(textureSize, textureSize, Bitmap::Config.ARGB_8888)
            canvas = Canvas.new(bitmap)
            paint = Paint.new()
            paint.setTypeface(typeface)
            paint.setTextSize((@realFontSize).to_f)
            paint.setAlpha((basicColor.alpha).to_i)
            paint.setColor(basicColor.to_i)
            biggestHeight = 0
            bounds = Rect.new()
            x = 0
            y = 0
            (0...@size).each do |index|
                @characterArray[0] = @pattern.charAt(index)
                paint.getTextBounds(@characterArray, 0, 1, bounds)
                @_characterWidth[index] = bounds.right
                if bounds.bottom - bounds.top > biggestHeight
                    biggestHeight = bounds.bottom - bounds.top
                end
                x = (index % @CELLS_PER_ROW) * cellSize
                x += (cellSize >> 1)
                x -= (@_characterWidth[index] >> 1)
                y = 0
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
                canvas.drawText(@characterArray, 0, 1, (x).to_f - 3.0, (y).to_f - 6.0, paint)
            end
            canvas.save()
            image = AndroidImmutableImage.create(bitmap)
            @fontImage = @preResourceImageUtil.encapsulate(image)
            return @fontImage
        else
            return @fontImage
        end
    end
    

    def getFontWidths(filename, fontSize)
        typeface = Typeface::DEFAULT
        paint = Paint.new()
        paint.setTypeface(typeface)
        paint.setTextSize((fontSize).to_f)
        paint.setARGB(255, 255, 255, 255)
        bounds = Rect.new()
        (0...@size).each do |index|
            @characterArray[0] = @pattern.charAt(index)
            paint.getTextBounds(@characterArray, 0, 1, bounds)
            if index < @lastCapIndex
                if @characterArray[0] == "1"
                    @_characterWidth[index] = bounds.right + 3
                elsif @characterArray[0] == "J" || @characterArray[0] == "V" || @characterArray[0] == "2" || @characterArray[0] == "9" || @characterArray[0] == "I" || @characterArray[0] == "N" || @characterArray[0] == "U"
                    @_characterWidth[index] = bounds.right + 1
                elsif @characterArray[0] == "4" || @characterArray[0] == "C" || @characterArray[0] == "E" || @characterArray[0] == "O"
                    @_characterWidth[index] = bounds.right - 2
                elsif @characterArray[0] == "B" || @characterArray[0] == "D" || @characterArray[0] == "G" || @characterArray[0] == "H" || @characterArray[0] == "T" || @characterArray[0] == "W"
                    @_characterWidth[index] = bounds.right - 3
                elsif @characterArray[0] == "A" || @characterArray[0] == "Q" || @characterArray[0] == "R"
                    @_characterWidth[index] = bounds.right - 5
                elsif @characterArray[0] == "M"
                    @_characterWidth[index] = bounds.right - 6
                elsif @characterArray[0] == "m"
                    @_characterWidth[index] = bounds.right - 8
                else
                    @_characterWidth[index] = bounds.right
                end
            else
                if @characterArray[0] == " "
                    @_characterWidth[index] = bounds.right + 10
                elsif @characterArray[0] == "l" || @characterArray[0] == "i" || @characterArray[0] == "j" || @characterArray[0] == "." || @characterArray[0] == "!" || @characterArray[0] == "|"
                    @_characterWidth[index] = bounds.right + 6
                elsif @characterArray[0] == "f" || @characterArray[0] == "t" || @characterArray[0] == "u" || @characterArray[0] == "v"
                    @_characterWidth[index] = bounds.right + 1
                elsif @characterArray[0] == "r"
                    @_characterWidth[index] = bounds.right + 2
                elsif @characterArray[0] == "a" || @characterArray[0] == "b" || @characterArray[0] == "g" || @characterArray[0] == "u"
                    @_characterWidth[index] = bounds.right - 1
                elsif @characterArray[0] == "o" || @characterArray[0] == "e"
                    @_characterWidth[index] = bounds.right - 2
                elsif @characterArray[0] == "m"
                    @_characterWidth[index] = bounds.right - 7
                else
                    @_characterWidth[index] = bounds.right
                end
            end
        end
        @_characterWidth[0] = (fontSize >> 1) - 2
        return @_characterWidth
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/graphics/Bitmap"
require "android/graphics/Canvas"
require "android/graphics/Paint"
require "android/graphics/Rect"
require "android/graphics/Typeface"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/image/PreResourceImageUtil"
require "org/allbinary/image/opengles/OpenGLESImage"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"
require "org/microemu/android/device/AndroidImageInterface"
require "org/microemu/android/device/AndroidImmutableImage"

class TrueTypeFontUtil
    @@instance = TrueTypeFontUtil.new()
end


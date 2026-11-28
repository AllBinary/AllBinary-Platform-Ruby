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
# require "java/io/File"
require "org/allbinary/emulator/device/TrueTypeFontUtilBase"

module ::Org; module Allbinary; module Emulator; module Device

#TTF
class TrueTypeFontUtil < TrueTypeFontUtilBase
    attr_accessor :logUtil, :preResourceImageUtil, :realFontSize, :fontImage

    def jfields_org_allbinary_emulator_device_TrueTypeFontUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @preResourceImageUtil = ::Org::Allbinary::Image::PreResourceImageUtil.getInstance()
        @realFontSize = 18
        @fontImage = ::Org::Allbinary::Image::Opengles::OpenGLESImage::NULL_OPENGL_IMAGE
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super(1)
        jfields_org_allbinary_emulator_device_TrueTypeFontUtil
    end
    

    def saveFontAtlasAsFile()
        begin
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            file = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getContext().getFilesDir()
            path = file.getAbsolutePath() + ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().FONT_ATLAS
            @logUtil.putF(path, self, commonStrings.CONSTRUCTOR)
            fos = ::Java::Io::FileOutputStream.new(path)
            bitmap = (@fontImage.openGLBitmap.getImage()).getBitmap()
            bitmap.compress(::Android::Graphics::Bitmap::CompressFormat.PNG, 100, fos)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.EXCEPTION, e)
        end
    end
    java_overload :saveFontAtlasAsFile, 0
    

    def getFontBitmapGL(gl, filename, cellSize, basicColor)
        if @fontImage == ::Org::Allbinary::Image::Opengles::OpenGLESImage::NULL_OPENGL_IMAGE
            cellsPerRow2 = @CELLS_PER_ROW * 2
            cellsPerRow3 = @CELLS_PER_ROW * 3
            cellsPerRow4 = @CELLS_PER_ROW * 4
            cellsPerRow5 = @CELLS_PER_ROW * 5
            cellsPerRow6 = @CELLS_PER_ROW * 6
            cellsPerRow7 = @CELLS_PER_ROW * 7
            typeface = ::Android::Graphics::Typeface::DEFAULT
            textureSize = self.getAsTextureSize(@CELLS_PER_ROW * cellSize)
            bitmap = ::Android::Graphics::Bitmap.createBitmap(textureSize, textureSize, ::Android::Graphics::Bitmap::Config.ARGB_8888)
            canvas = ::Android::Graphics::Canvas.new(bitmap)
            paint = ::Android::Graphics::Paint.new()
            paint.setTypeface(typeface)
            paint.setTextSize((@realFontSize).to_f)
            paint.setAlpha(((basicColor.alpha).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            paint.setColor(basicColor.to_i)
            biggestHeight = 0
            bounds = ::Android::Graphics::Rect.new()
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
            image = ::Org::Microemu::Android::Device::AndroidImmutableImage.create(bitmap)
            @fontImage = @preResourceImageUtil.encapsulate(image)
            return @fontImage
        else
            return @fontImage
        end
    end
    java_overload :getFontBitmapGL, 4
    

    def getFontWidths(filename, fontSize)
        typeface = ::Android::Graphics::Typeface::DEFAULT
        paint = ::Android::Graphics::Paint.new()
        paint.setTypeface(typeface)
        paint.setTextSize((fontSize).to_f)
        paint.setARGB(255, 255, 255, 255)
        bounds = ::Android::Graphics::Rect.new()
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

module ::Java; module Io; autoload :FileOutputStream, "java/io/FileOutputStream" unless const_defined?(:FileOutputStream, false); end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Android; module Graphics; autoload :Bitmap, "android/graphics/Bitmap" unless const_defined?(:Bitmap, false); end; end
module ::Android; module Graphics; autoload :Canvas, "android/graphics/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Android; module Graphics; autoload :Paint, "android/graphics/Paint" unless const_defined?(:Paint, false); end; end
module ::Android; module Graphics; autoload :Rect, "android/graphics/Rect" unless const_defined?(:Rect, false); end; end
module ::Android; module Graphics; autoload :Typeface, "android/graphics/Typeface" unless const_defined?(:Typeface, false); end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :PreResourceImageUtil, "org/allbinary/image/PreResourceImageUtil" unless const_defined?(:PreResourceImageUtil, false); end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Microemu; module Android; module Device; autoload :AndroidImageInterface, "org/microemu/android/device/AndroidImageInterface" unless const_defined?(:AndroidImageInterface, false); end; end; end; end
module ::Org; module Microemu; module Android; module Device; autoload :AndroidImmutableImage, "org/microemu/android/device/AndroidImmutableImage" unless const_defined?(:AndroidImmutableImage, false); end; end; end; end

begin
    TrueTypeFontUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


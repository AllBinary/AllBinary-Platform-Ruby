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
# package org.allbinary.media.image


class ImageUtil
    attr_accessor :logUtil, :commonStrings, :commonSeps, :IIOIMAGE_POOL_NAME, :CREATE_BUFFERED_IMAGE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @IIOIMAGE_POOL_NAME = "IIOIMAGE_POOL_NAME"
        @CREATE_BUFFERED_IMAGE = "createBufferedImage"
    end
    

    def self.getInstance()
        return ImageUtil.instance
    end
    

    def initialize()
        initialize_fields
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def create(width, height)
        display = BareMain.shell.getDisplay()
        return Image.new(display, width, height)
    end
    

    # throws Exception
    def createBufferedImage(bufferedImageArray, percent, scale)
        size = bufferedImageArray.length
        scaledBufferedImageArray = Array.new(size, nil)
        bufferedImage = nil
        imageData = nil
        (0...size).each do |index|
            bufferedImage = bufferedImageArray[index]
            imageData = bufferedImage.getImageData()
            newWidth = ((imageData.width * percent / 100)).to_i
            newHeight = ((imageData.height * percent / 100)).to_i
            scaledBufferedImageArray[index] = self.createBufferedImage5(bufferedImage, newWidth, newHeight, scale)
        end
        return scaledBufferedImageArray
    end
    

    # throws Exception
    def createBufferedImage2(bufferedImageArray, percent, scale)
        size = bufferedImageArray.length
        scaledBufferedImageArray = Array.new(size, nil)
        bufferedImage = nil
        imageData = nil
        (0...size).each do |index|
            bufferedImage = bufferedImageArray[index]
            imageData = bufferedImage.getImageData()
            newWidth = ((imageData.width * percent)).to_i
            newHeight = ((imageData.height * percent)).to_i
            scaledBufferedImageArray[index] = self.createBufferedImage5(bufferedImage, newWidth, newHeight, scale)
        end
        return scaledBufferedImageArray
    end
    

    # throws Exception
    def createBufferedImage3(bufferedImageArray, width, height, scale)
        size = bufferedImageArray.length
        scaledBufferedImageArray = Array.new(size, nil)
        (0...size).each do |index|
            scaledBufferedImageArray[index] = self.createBufferedImage5(bufferedImageArray[index], width, height, scale)
        end
        return scaledBufferedImageArray
    end
    

    # throws Exception
    def createBufferedImage4(bufferedImage, newWidth, newHeight)
        return self.createBufferedImage5(bufferedImage, newWidth, newHeight, true)
    end
    

    # throws Exception
    def createBufferedImage5(bufferedImage, newWidth, newHeight, scale)
        return self.createBufferedImage6(bufferedImage, newWidth, newHeight, scale, false)
    end
    

    # throws Exception
    def createBufferedImage6(bufferedImage, newWidth, newHeight, scale, allowTranslate)
        imageData = bufferedImage.getImageData()
        width = imageData.width
        height = imageData.height
        d_newWidth = (newWidth).to_f
        d_newHeight = (newHeight).to_f
        widthRatio = d_newWidth / width
        heightRatio = d_newHeight / height
        ratioX = 1.0
        ratioY = 1.0
        if scale
            ratioX = widthRatio
            ratioY = heightRatio
        end
        @logUtil.putF(StringMaker.new().appendfloat(width).append(@commonSeps.FORWARD_SLASH).appendfloat(height).append(@commonSeps.COLON).appendint(newWidth).append(@commonSeps.FORWARD_SLASH).appendint(newHeight).append(@commonSeps.COLON).appendfloat(widthRatio).append(@commonSeps.FORWARD_SLASH).appendfloat(heightRatio).to_s, self, @CREATE_BUFFERED_IMAGE)
        dx = 0.0
        dy = 0.0
        if !scale && allowTranslate
            dx = ((newWidth).to_f - width) / 2.0
            dy = ((newHeight).to_f - height) / 2.0
            @logUtil.putF(StringMaker.new().append("Translate dx: ").appendfloat(dx).append(" dy: ").appendfloat(dy).to_s, self, @CREATE_BUFFERED_IMAGE)
        end
        newBufferedImage = Image.new(BareMain.shell.getDisplay(), newWidth, newHeight)
        gc = GC.new(newBufferedImage)
        affineTransform = Transform.new(gc.getDevice())
        affineTransform.scale(ratioX, ratioY)
        affineTransform.translate(dx, dy)
        gc.setTransform(affineTransform)
        gc.setAntialias(SWT::ON)
        gc.setInterpolation(SWT::HIGH)
        gc.drawImage(bufferedImage, 0, 0, bufferedImage.getBounds().width, bufferedImage.getBounds().height, 0, 0, newWidth, newHeight)
        gc.dispose()
        return newBufferedImage
    end
    

    def drawTransformedImage(image, parent, dx, dy, width, height)
        imageCanvas = Canvas.new(parent, SWT::NONE)
        imageCanvas.addPaintListener(Class.new(PaintListener.is_a?(Class) ? PaintListener : Object) do
            include(PaintListener) unless PaintListener.is_a?(Class)
            

            def paintControl(event)
                gc = event.gc
                affineTransform = Transform.new(gc.getDevice())
                affineTransform.translate(dx, dy)
                gc.setAntialias(SWT::ON)
                gc.setInterpolation(SWT::HIGH)
                gc.drawImage(image, 0, 0, image.getBounds().width, image.getBounds().height, 0, 0, width, height)
            end
        end.new())
        return imageCanvas
    end
    

    def toString(bufferedImage)
        commonLabels = CommonLabels.getInstance()
        stringBuffer = StringMaker.new()
        imageData = bufferedImage.getImageData()
        stringBuffer.append(" org.eclipse.swt.graphics.Image: ")
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint((imageData.width).to_i)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint((imageData.height).to_i)
        stringBuffer.append(" Type: ")
        stringBuffer.appendint((imageData.type).to_i)
        return stringBuffer.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/eclipse/swt/SWT"
require "org/eclipse/swt/widgets/Canvas"
require "org/eclipse/swt/widgets/Composite"
require "org/eclipse/swt/graphics/GC"
require "org/eclipse/swt/graphics/ImageData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/eclipse/swt/events/PaintEvent"
require "org/eclipse/swt/events/PaintListener"
require "org/eclipse/swt/graphics/Transform"
require "org/eclipse/swt/widgets/Display"
require "org/microemu/app/BareMain"

class ImageUtil
    @@instance = ImageUtil.new()
end


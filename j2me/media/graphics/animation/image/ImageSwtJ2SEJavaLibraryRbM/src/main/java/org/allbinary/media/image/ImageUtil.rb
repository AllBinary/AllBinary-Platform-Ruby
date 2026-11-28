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

require "java/lang/JavaOverload"

module ::Org; module Allbinary; module Media; module Image

class ImageUtil
    attr_accessor :logUtil, :commonStrings, :commonSeps, :IIOIMAGE_POOL_NAME, :CREATE_BUFFERED_IMAGE

    def jfields_org_allbinary_media_image_ImageUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @IIOIMAGE_POOL_NAME = "IIOIMAGE_POOL_NAME"
        @CREATE_BUFFERED_IMAGE = "createBufferedImage"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageUtil
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def create(width, height)
        display = ::Org::Microemu::App::BareMain.shell.getDisplay()
        return ::Org::Eclipse::Swt::Graphics::Image.new(display, width, height)
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
            newWidth = (((imageData.width * percent / 100)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            newHeight = (((imageData.height * percent / 100)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
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
            newWidth = (((imageData.width * percent)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            newHeight = (((imageData.height * percent)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
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
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().appendfloat(width).append(@commonSeps.FORWARD_SLASH).appendfloat(height).append(@commonSeps.COLON).appendint(newWidth).append(@commonSeps.FORWARD_SLASH).appendint(newHeight).append(@commonSeps.COLON).appendfloat(widthRatio).append(@commonSeps.FORWARD_SLASH).appendfloat(heightRatio).to_s, self, @CREATE_BUFFERED_IMAGE)
        dx = 0.0
        dy = 0.0
        if !scale && allowTranslate
            dx = ((newWidth).to_f - width) / 2.0
            dy = ((newHeight).to_f - height) / 2.0
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Translate dx: ").appendfloat(dx).append(" dy: ").appendfloat(dy).to_s, self, @CREATE_BUFFERED_IMAGE)
        end
        newBufferedImage = ::Org::Eclipse::Swt::Graphics::Image.new(::Org::Microemu::App::BareMain.shell.getDisplay(), newWidth, newHeight)
        gc = ::Org::Eclipse::Swt::Graphics::JavaGC.new(newBufferedImage)
        affineTransform = ::Org::Eclipse::Swt::Graphics::Transform.new(gc.getDevice())
        affineTransform.scale(ratioX, ratioY)
        affineTransform.translate(dx, dy)
        gc.setTransform(affineTransform)
        gc.setAntialias(::Org::Eclipse::Swt::SWT::ON)
        gc.setInterpolation(::Org::Eclipse::Swt::SWT::HIGH)
        gc.drawImage(bufferedImage, 0, 0, bufferedImage.getBounds().width, bufferedImage.getBounds().height, 0, 0, newWidth, newHeight)
        gc.dispose()
        return newBufferedImage
    end
    

    def drawTransformedImage(image, parent, dx, dy, width, height)
        imageCanvas = ::Org::Eclipse::Swt::Widgets::Canvas.new(parent, ::Org::Eclipse::Swt::SWT::NONE)
        imageCanvas.addPaintListener(Class.new(::Org::Eclipse::Swt::Events::PaintListener.is_a?(Class) ? ::Org::Eclipse::Swt::Events::PaintListener : Object) do
            include(::Org::Eclipse::Swt::Events::PaintListener) unless ::Org::Eclipse::Swt::Events::PaintListener.is_a?(Class)
            

            def paintControl(event)
                gc = event.gc
                affineTransform = ::Org::Eclipse::Swt::Graphics::Transform.new(gc.getDevice())
                affineTransform.translate(dx, dy)
                gc.setAntialias(::Org::Eclipse::Swt::SWT::ON)
                gc.setInterpolation(::Org::Eclipse::Swt::SWT::HIGH)
                gc.drawImage(image, 0, 0, image.getBounds().width, image.getBounds().height, 0, 0, width, height)
            end
            java_overload :paintControl, 1
        end.new())
        return imageCanvas
    end
    

    def toString(bufferedImage)
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        imageData = bufferedImage.getImageData()
        stringBuffer.append(" org.eclipse.swt.graphics.Image: ")
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(((imageData.width).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(((imageData.height).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(" Type: ")
        stringBuffer.appendint(((imageData.type).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return stringBuffer.to_s
    end

    def self.instance()
        ImageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Eclipse; module Swt; autoload :SWT, "org/eclipse/swt/SWT" unless const_defined?(:SWT, false); end; end; end
module ::Org; module Eclipse; module Swt; module Widgets; autoload :Canvas, "org/eclipse/swt/widgets/Canvas" unless const_defined?(:Canvas, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Widgets; autoload :Composite, "org/eclipse/swt/widgets/Composite" unless const_defined?(:Composite, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :JavaGC, "org/eclipse/swt/graphics/JavaGC" unless const_defined?(:JavaGC, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :ImageData, "org/eclipse/swt/graphics/ImageData" unless const_defined?(:ImageData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Eclipse; module Swt; module Events; autoload :PaintEvent, "org/eclipse/swt/events/PaintEvent" unless const_defined?(:PaintEvent, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Events; autoload :PaintListener, "org/eclipse/swt/events/PaintListener" unless const_defined?(:PaintListener, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Transform, "org/eclipse/swt/graphics/Transform" unless const_defined?(:Transform, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Widgets; autoload :Display, "org/eclipse/swt/widgets/Display" unless const_defined?(:Display, false); end; end; end; end
module ::Org; module Microemu; module App; autoload :BareMain, "org/microemu/app/BareMain" unless const_defined?(:BareMain, false); end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Image, "org/eclipse/swt/graphics/Image" unless const_defined?(:Image, false); end; end; end; end

begin
    ImageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Image

class ImageModifierUtil
    attr_accessor :logUtil, :commonStrings, :resourceCallbackStrings, :alphaArray

    def jfields_org_allbinary_media_image_ImageModifierUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @resourceCallbackStrings = ::Org::Microemu::Device::ResourceCallbackStrings.getInstance()
        @alphaArray = nil unless instance_variable_defined?(:@alphaArray)
    end

    def initialize
        jfields_org_allbinary_media_image_ImageModifierUtil
    end
    

    def self.getInstanceOrCreate()
        return ImageModifierUtil.new()
    end
    

    def setColor(unusedOriginalImage, image, imageIndex, basicColor)
    end
    

    def changeColor(unusedOriginalImage, image, imageIndex, basicColor)
    end
    

    def setAlpha(originalImage, image, imageIndex, alpha)
        alphaF = (alpha).to_f
        alphaFloat = alphaF / 255.0
        self.setAlphaF(originalImage, image, imageIndex, alphaFloat)
    end
    

    def setAlphaF(originalImage, image, imageIndex, alpha)
        if @alphaArray[imageIndex]
            @alphaArray[imageIndex] = false
            self.setAlpha2(originalImage, image, imageIndex, alpha)
        end
    end
    

    def setAlpha2(originalImage, image, imageIndex, alpha)
        htmlImage = image
        canvasImage = htmlImage.getImage()
        originalPlaynImage = (originalImage).getImage()
        canvas = canvasImage.canvas()
        canvas.clear()
        canvas.setAlpha(alpha)
        canvas.drawImage(originalPlaynImage, 0, 0)
    end
    

    def setAlpha3(image, alpha)
        alphaF = alpha
        alphaFloat = alphaF / 255.0
        htmlImage = image
        canvasImage = htmlImage.getImage()
        canvas = canvasImage.canvas()
        canvas.setAlpha(alphaFloat)
    end
    

    def getImageArray(originalImageArray)
        size = originalImageArray.length
        @alphaArray = (Array.new(size, false)).tap { |java_array| java_array.instance_variable_set(:@java_component, :Z) }
        imageArray = Array.new(size, nil)
        (0...size).each do |index|
            imageArray[index] = originalImageArray[index]
            self.handleImage(imageArray, index, originalImageArray[index])
        end
        return imageArray
    end
    

    def handleImage(imageArray, index, image)
        image3 = (image).getImage()
        if image3 != nil
            if image3.isReady() || image3.width() + image3.height() <= 0 || image.getName() == @resourceCallbackStrings.FROM_DATA
                self.copy(imageArray, index, image, image3)
            else
                callback = Class.new(::Playn::Core::Util::Callback.is_a?(Class) ? ::Playn::Core::Util::Callback : Object) do
                    include(::Playn::Core::Util::Callback) unless ::Playn::Core::Util::Callback.is_a?(Class)
                    

                    def onSuccess(resource)
                        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                        logUtil.putF((@resourceCallbackStrings.DONE).to_s + image.getName(), self, @resourceCallbackStrings.HANDLE_IMAGE)
                        copy(imageArray, index, image, image3)
                    end
                    java_overload :onSuccess, 1
                    

                    def onFailure(e)
                        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                        logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(@resourceCallbackStrings.ERROR).append(image.getName()).to_s, self, @resourceCallbackStrings.HANDLE_IMAGE)
                    end
                    java_overload :onFailure, 1
                end.new()
                image3.addCallback(callback)
            end
        else
            @logUtil.putF(@resourceCallbackStrings.NULL + image.isMutable(), self, @resourceCallbackStrings.HANDLE_IMAGE)
        end
    end
    

    def copy(imageArray, index, image, image3)
        begin
            image2 = ::Javax::Microedition::Lcdui::Image.createImage(image3.width(), image3.height())
            graphics = image2.getGraphics()
            graphics.drawImage(image, 0, 0, ::Org::Allbinary::Graphics::Anchor::TOP_LEFT)
            imageArray[index] = image2
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION_LABEL + @resourceCallbackStrings.DONE, self, @resourceCallbackStrings.HANDLE_IMAGE)
        end
    end
    

    def reset()
        size = @alphaArray.length
        (0...size).each do |index|
            @alphaArray[index] = true
        end
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Microemu; module Device; module Playn; autoload :PlaynImage, "org/microemu/device/playn/PlaynImage" unless const_defined?(:PlaynImage, false); end; end; end; end
module ::Org; module Microemu; module Device; autoload :ResourceCallbackStrings, "org/microemu/device/ResourceCallbackStrings" unless const_defined?(:ResourceCallbackStrings, false); end; end; end
module ::Playn; module Core; autoload :Canvas, "playn/core/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Playn; module Core; autoload :CanvasImage, "playn/core/CanvasImage" unless const_defined?(:CanvasImage, false); end; end
module ::Playn; module Core; module Util; autoload :Callback, "playn/core/util/Callback" unless const_defined?(:Callback, false); end; end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end
module ::Playn; module Core; autoload :Image, "playn/core/Image" unless const_defined?(:Image, false); end; end

end; end; end; end


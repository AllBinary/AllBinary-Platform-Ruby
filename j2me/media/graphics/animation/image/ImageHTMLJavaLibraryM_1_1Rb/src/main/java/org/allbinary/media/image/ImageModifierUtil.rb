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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"

class ImageModifierUtil
    attr_accessor :logUtil, :commonStrings, :resourceCallbackStrings, :alphaArray

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @resourceCallbackStrings = ResourceCallbackStrings.getInstance()
        @alphaArray = nil
    end

    def initialize
        initialize_fields
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
        @alphaArray = Array.new(size, false)
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
                callback = Class.new(Callback.is_a?(Class) ? Callback : Object) do
                    include(Callback) unless Callback.is_a?(Class)
                    

                    def onSuccess(resource)
                        logUtil = LogUtil.getInstance()
                        logUtil.putF((@resourceCallbackStrings.DONE).to_s + image.getName(), self, @resourceCallbackStrings.HANDLE_IMAGE)
                        copy(imageArray, index, image, image3)
                    end
                    

                    def onFailure(e)
                        logUtil = LogUtil.getInstance()
                        logUtil.putF(StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(@resourceCallbackStrings.ERROR).append(image.getName()).to_s, self, @resourceCallbackStrings.HANDLE_IMAGE)
                    end
                end.new()
                image3.addCallback(callback)
            end
        else
            @logUtil.putF(@resourceCallbackStrings.NULL + image.isMutable(), self, @resourceCallbackStrings.HANDLE_IMAGE)
        end
    end
    

    def copy(imageArray, index, image, image3)
        begin
            image2 = Image.createImage(image3.width(), image3.height())
            graphics = image2.getGraphics()
            graphics.drawImage(image, 0, 0, Anchor::TOP_LEFT)
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

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/microemu/device/playn/PlaynImage"
require "org/microemu/device/ResourceCallbackStrings"
require "playn/core/Canvas"
require "playn/core/CanvasImage"
require "playn/core/util/Callback"


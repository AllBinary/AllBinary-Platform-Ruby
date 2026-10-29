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

# require "javax/microedition/lcdui/Image"

class AndroidImageUtil
    

    def self.getInstance()
        return AndroidImageUtil.instance
    end
    

    def paintBitmap(bitmap, originalBitmap, paint)
        bitmap.eraseColor(Color::TRANSPARENT)
        canvas = Canvas.new()
        canvas.setBitmap(bitmap)
        canvas.drawBitmap(originalBitmap, 0.0, 0.0, paint)
    end
    

    def paint(image, originalImage, paint)
        androidImage = image
        androidImage.getBitmap().eraseColor(Color::TRANSPARENT)
        canvas = androidImage.getCanvas()
        originalAndroidImage = originalImage
        canvas.drawBitmap(originalAndroidImage.getBitmap(), 0.0, 0.0, paint)
    end
    

    def rotate(image, originalImage, matrix, paint)
        androidImage = image
        androidImage.getBitmap().eraseColor(Color::TRANSPARENT)
        canvas = androidImage.getCanvas()
        canvas.concat(matrix)
        originalAndroidImage = originalImage
        canvas.drawBitmap(originalAndroidImage.getBitmap(), 0.0, 0.0, paint)
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
require "android/graphics/Color"
require "android/graphics/Matrix"
require "android/graphics/Paint"
require "org/microemu/android/device/AndroidImageInterface"

class AndroidImageUtil
    @@instance = AndroidImageUtil.new()
end


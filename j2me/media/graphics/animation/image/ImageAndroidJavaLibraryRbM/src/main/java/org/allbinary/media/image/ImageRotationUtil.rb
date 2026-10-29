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

class ImageRotationUtil
    attr_accessor :matrix, :anchor

    def initialize_fields
        @matrix = Matrix.new()
        @anchor = Anchor::TOP_LEFT
    end
    

    def self.getInstance()
        return ImageRotationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def createRotatedImage(originalImage, rotationInDegrees)
        image = ImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if image.isMutable()
            bitmap = (image).getBitmap()
            width = bitmap.getWidth()
            height = bitmap.getHeight()
            @matrix.setRotate((rotationInDegrees).to_f, ((width >> 1)).to_f, ((height >> 1)).to_f)
            canvas = (image).getCanvas()
            canvas.concat(@matrix)
            image.getGraphics().drawImage(originalImage, 0, 0, @anchor)
            return image
        else
            raise StandardError.new("Not Mutable")
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/Anchor"
require "android/graphics/Bitmap"
require "android/graphics/Canvas"
require "android/graphics/Matrix"
require "org/microemu/android/device/AndroidImageInterface"
require "org/allbinary/media/image/ImageCreationUtil"

class ImageRotationUtil
    @@instance = ImageRotationUtil.new()
end


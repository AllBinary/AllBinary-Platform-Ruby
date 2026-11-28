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


module ::Org; module Allbinary; module Media; module Image

class AndroidImageUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def paintBitmap(bitmap, originalBitmap, paint)
        bitmap.eraseColor(::Android::Graphics::Color::TRANSPARENT)
        canvas = ::Android::Graphics::Canvas.new()
        canvas.setBitmap(bitmap)
        canvas.drawBitmap(originalBitmap, 0.0, 0.0, paint)
    end
    

    def paint(image, originalImage, paint)
        androidImage = image
        androidImage.getBitmap().eraseColor(::Android::Graphics::Color::TRANSPARENT)
        canvas = androidImage.getCanvas()
        originalAndroidImage = originalImage
        canvas.drawBitmap(originalAndroidImage.getBitmap(), 0.0, 0.0, paint)
    end
    

    def rotate(image, originalImage, matrix, paint)
        androidImage = image
        androidImage.getBitmap().eraseColor(::Android::Graphics::Color::TRANSPARENT)
        canvas = androidImage.getCanvas()
        canvas.concat(matrix)
        originalAndroidImage = originalImage
        canvas.drawBitmap(originalAndroidImage.getBitmap(), 0.0, 0.0, paint)
    end

    def self.instance()
        AndroidImageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AndroidImageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AndroidImageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidImageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module Graphics; autoload :Bitmap, "android/graphics/Bitmap" unless const_defined?(:Bitmap, false); end; end
module ::Android; module Graphics; autoload :Canvas, "android/graphics/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Android; module Graphics; autoload :Color, "android/graphics/Color" unless const_defined?(:Color, false); end; end
module ::Android; module Graphics; autoload :Matrix, "android/graphics/Matrix" unless const_defined?(:Matrix, false); end; end
module ::Android; module Graphics; autoload :Paint, "android/graphics/Paint" unless const_defined?(:Paint, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Microemu; module Android; module Device; autoload :AndroidImageInterface, "org/microemu/android/device/AndroidImageInterface" unless const_defined?(:AndroidImageInterface, false); end; end; end; end

begin
    AndroidImageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


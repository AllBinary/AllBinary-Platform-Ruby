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

class ImageRotationUtil
    attr_accessor :matrix, :anchor

    def jfields_org_allbinary_media_image_ImageRotationUtil
        @matrix = ::Android::Graphics::Matrix.new()
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def self.getInstance()
        return ImageRotationUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_ImageRotationUtil
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
        ImageRotationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageRotationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageRotationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageRotationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Android; module Graphics; autoload :Bitmap, "android/graphics/Bitmap" unless const_defined?(:Bitmap, false); end; end
module ::Android; module Graphics; autoload :Canvas, "android/graphics/Canvas" unless const_defined?(:Canvas, false); end; end
module ::Android; module Graphics; autoload :Matrix, "android/graphics/Matrix" unless const_defined?(:Matrix, false); end; end
module ::Org; module Microemu; module Android; module Device; autoload :AndroidImageInterface, "org/microemu/android/device/AndroidImageInterface" unless const_defined?(:AndroidImageInterface, false); end; end; end; end
autoload :ImageCreationUtil, "org/allbinary/media/image/ImageCreationUtil" unless const_defined?(:ImageCreationUtil, false)

begin
    ImageRotationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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

class ImageJ2MEScaleUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def scaleArray(images, width, height)
        (0...images.length).each do |index|
            image = images[index]
            images[index] = ImageScaleUtil.getInstance().createImage2(::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance(), image, (width).to_f / 2.0, (image.getWidth()).to_f, (height).to_f, (image.getHeight()).to_f, false)
        end
        return images
    end
    

    # throws Exception
    def scale(image, width, height)
        return ImageScaleUtil.getInstance().createImage2(::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance(), image, (width).to_f, (image.getWidth()).to_f, (height).to_f, (image.getHeight()).to_f, false)
    end

    def self.instance()
        ImageJ2MEScaleUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageJ2MEScaleUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageJ2MEScaleUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageJ2MEScaleUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
autoload :ImageScaleUtil, "org/allbinary/media/image/ImageScaleUtil" unless const_defined?(:ImageScaleUtil, false)

begin
    ImageJ2MEScaleUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


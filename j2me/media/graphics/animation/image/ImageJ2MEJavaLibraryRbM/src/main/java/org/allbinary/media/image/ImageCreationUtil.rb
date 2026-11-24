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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Image

class ImageCreationUtil
    

    def self.getInstance()
        return ImageCreationUtil.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def createImageWH(width, height)
        image = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance().get(self.class.java_name, width, height)
        return image
    end
    

    # throws Exception
    def createImage(width, height, maxScaleX, maxScaleY)
        image = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance().get(self.class.java_name, (((width).to_f * maxScaleX)).to_i + 1, (((height).to_f * maxScaleY)).to_i + 1)
        return image
    end

    def self.instance()
        ImageCreationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageCreationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageCreationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageCreationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end

begin
    ImageCreationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


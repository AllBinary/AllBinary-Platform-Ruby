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
# package org.allbinary.image

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Image

class PaintableToImageUtil
    

    # throws Exception
    def self.getImage(paintableInterface, width, height)
        image = GameFeatureImageCacheFactory.getInstance().get(@@instance.class.java_name, width, height)
        graphics = image.getGraphics()
        paintableInterface.paint(graphics)
        return image
    end

    def self.instance()
        PaintableToImageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PaintableToImageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PaintableToImageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaintableToImageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false); end; end; end; end
autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false)

begin
    PaintableToImageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


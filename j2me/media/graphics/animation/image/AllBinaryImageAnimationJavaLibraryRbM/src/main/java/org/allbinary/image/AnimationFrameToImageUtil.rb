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


class AnimationFrameToImageUtil
    

    def self.getInstance()
        return AnimationFrameToImageUtil.instance
    end
    

    # throws Exception
    def getInstanceTranslate(width, height, animationInterface)
        image = GameFeatureImageCacheFactory.getInstance().get(AnimationFrameToImageUtil.instance.class.name, ((width * 3) >> 1), ((height * 3) >> 1))
        graphics = image.getGraphics()
        tranlateX = (width >> 2)
        tranlateY = (height >> 2)
        graphics.translate(tranlateX, tranlateY)
        animationInterface.paintXY(graphics, 0, 0)
        graphics.translate(-tranlateX, -tranlateY)
        return image
    end
    

    # throws Exception
    def getInstanceWH(width, height, animationInterface)
        image = GameFeatureImageCacheFactory.getInstance().get(AnimationFrameToImageUtil.instance.class.name, width, height)
        graphics = image.getGraphics()
        animationInterface.paintXY(graphics, 0, 0)
        return image
    end

    def self.instance()
        AnimationFrameToImageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AnimationFrameToImageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AnimationFrameToImageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AnimationFrameToImageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory"

begin
    AnimationFrameToImageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


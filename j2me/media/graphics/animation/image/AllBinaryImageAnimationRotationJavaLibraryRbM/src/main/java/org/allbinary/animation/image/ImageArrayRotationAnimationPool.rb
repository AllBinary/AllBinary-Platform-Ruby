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
# package org.allbinary.animation.image

require "org/allbinary/logic/util/cache/BasicArrayListResetablePool"

class ImageArrayRotationAnimationPool < BasicArrayListResetablePool
    

    def initialize(cacheableInterfaceFactoryInterface)
        super(cacheableInterfaceFactoryInterface)
    end
    

    def self.getInstance()
        return ImageArrayRotationAnimationPool::IMAGE_ROTATION_ANIMATION_POOL
    end
    

    # throws Exception
    def remove(key)
        cacheableInterface = super(key)
        allBinaryImageRotationAnimationInfo = key
        imageArrayRotationAnimationCacheable = (cacheableInterface)
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray())
        return cacheableInterface
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:IMAGE_ROTATION_ANIMATION_POOL, ImageArrayRotationAnimationPool.new(ImageArrayRotationAnimationCacheableInterfaceFactory.new()))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageArrayRotationAnimationPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:IMAGE_ROTATION_ANIMATION_POOL].include?(name)
        end
        super
    end
end

autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface"
autoload :CacheableInterfaceFactoryInterface, "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"
autoload :PoolInterface, "org/allbinary/logic/util/cache/PoolInterface"
autoload :ImageArrayRotationAnimationCacheable, "org/allbinary/animation/image/ImageArrayRotationAnimationCacheable"
autoload :ImageArrayRotationAnimationCacheableInterfaceFactory, "org/allbinary/animation/image/ImageArrayRotationAnimationCacheableInterfaceFactory"
autoload :ImageArrayRotationAnimationInfo, "org/allbinary/animation/image/ImageArrayRotationAnimationInfo"

begin
    ImageArrayRotationAnimationPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


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
end

require "org/allbinary/logic/util/cache/CacheableInterface"
require "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"
require "org/allbinary/logic/util/cache/PoolInterface"
require "org/allbinary/animation/image/ImageArrayRotationAnimationCacheable"
require "org/allbinary/animation/image/ImageArrayRotationAnimationCacheableInterfaceFactory"
require "org/allbinary/animation/image/ImageArrayRotationAnimationInfo"

class ImageArrayRotationAnimationPool
    IMAGE_ROTATION_ANIMATION_POOL = ImageArrayRotationAnimationPool.new(ImageArrayRotationAnimationCacheableInterfaceFactory.new())
end


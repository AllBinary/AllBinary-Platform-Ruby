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

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Image

class ImageArrayRotationAnimationCacheableInterfaceFactory
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(key)
        return ImageArrayRotationAnimationCacheable.new(key, ::Org::Allbinary::Animation::AnimationBehavior.getInstance())
    end
    java_overload :getInstance, 1
end

module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false); end; end; end; end; end
autoload :ImageArrayRotationAnimationCacheable, "org/allbinary/animation/image/ImageArrayRotationAnimationCacheable" unless const_defined?(:ImageArrayRotationAnimationCacheable, false)

end; end; end; end


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
require "org/allbinary/logic/util/cache/CacheableInterface"
require "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class ImageArrayRotationAnimationCacheable < AdjustedImageArrayRotationAnimation
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    

    def initialize(anyType, animationBehavior)
        super((anyType).getImageArray(), (anyType).getAngleInfoP(), (anyType).getTotalAngle(), (anyType).getDx(), (anyType).getDy(), animationBehavior)
    end
    

    def getKey()
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    java_overload :getKey, 0
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :ImageArrayRotationAnimationInfo, "org/allbinary/animation/image/ImageArrayRotationAnimationInfo" unless const_defined?(:ImageArrayRotationAnimationInfo, false)

end; end; end; end


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
# package org.allbinary.animation.vector

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Vector

class LineAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :basicColor

    def jfields_org_allbinary_animation_vector_LineAnimationFactory
        @basicColor = nil unless instance_variable_defined?(:@basicColor)
    end
    

    def initialize(basicColor)
        jfields_org_allbinary_animation_vector_LineAnimationFactory
        @basicColor = basicColor
    end
    

    # throws Exception
    def getInstance(instanceId)
        return LineAnimation.new(@basicColor)
    end
    java_overload :getInstance, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :LineAnimation, "org/allbinary/animation/vector/LineAnimation" unless const_defined?(:LineAnimation, false)

end; end; end; end


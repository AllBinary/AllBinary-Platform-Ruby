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
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/VectorAnimationFactoryInterface"

module ::Org; module Allbinary; module Animation

class TimedVectorAnimationFactory
    include VectorAnimationFactoryInterface
    

    def getInstance(points, basicColor)
        return TimedVectorAnimation.new(points, basicColor, AnimationBehavior.getInstance())
    end
    java_overload :getInstance, 2
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)
autoload :TimedVectorAnimation, "org/allbinary/animation/TimedVectorAnimation" unless const_defined?(:TimedVectorAnimation, false)
autoload :VectorAnimation, "org/allbinary/animation/VectorAnimation" unless const_defined?(:VectorAnimation, false)

end; end; end


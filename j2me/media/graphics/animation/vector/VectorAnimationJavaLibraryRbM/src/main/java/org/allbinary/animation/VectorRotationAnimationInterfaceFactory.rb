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
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation

class VectorRotationAnimationInterfaceFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :currentPoints, :basicColor, :animationBehaviorFactory

    def jfields_org_allbinary_animation_VectorRotationAnimationInterfaceFactory
        @currentPoints = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    def initialize(currentPoints, basicColor, animationBehaviorFactory)
        jfields_org_allbinary_animation_VectorRotationAnimationInterfaceFactory
        @currentPoints = currentPoints
        self.setBasicColorP(basicColor)
        @animationBehaviorFactory = animationBehaviorFactory
    end
    

    # throws Exception
    def getInstance(instanceId)
        return VectorRotationAnimation.new(@currentPoints, self.getBasicColorP(), @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getInstance, 1
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false)
autoload :VectorRotationAnimation, "org/allbinary/animation/VectorRotationAnimation" unless const_defined?(:VectorRotationAnimation, false)

end; end; end


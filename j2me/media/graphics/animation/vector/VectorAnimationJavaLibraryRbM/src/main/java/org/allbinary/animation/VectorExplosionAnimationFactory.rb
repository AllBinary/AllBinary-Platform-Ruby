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
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation

class VectorExplosionAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :vectorExplosionGenerator, :basicColor, :animationBehaviorFactory

    def jfields_org_allbinary_animation_VectorExplosionAnimationFactory
        @vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    def initialize(basicColor, animationBehaviorFactory)
        jfields_org_allbinary_animation_VectorExplosionAnimationFactory
        @animationBehaviorFactory = animationBehaviorFactory
        self.setBasicColorP(basicColor)
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        vectorRotationAnimationInterface = animationInterface
        frame = vectorRotationAnimationInterface.getFrame()
        framePoints = vectorRotationAnimationInterface.getPoints(frame)
        points = @vectorExplosionGenerator.getInstance(framePoints, 6, @vectorExplosionGenerator.ROTATION)
        return VectorRotationAnimation.new(points, self.getBasicColorP(), @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getInstanceAnimation, 1
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false)
autoload :VectorAnimationInterface, "org/allbinary/animation/VectorAnimationInterface" unless const_defined?(:VectorAnimationInterface, false)
autoload :VectorExplosionGenerator, "org/allbinary/animation/VectorExplosionGenerator" unless const_defined?(:VectorExplosionGenerator, false)
autoload :VectorRotationAnimation, "org/allbinary/animation/VectorRotationAnimation" unless const_defined?(:VectorRotationAnimation, false)

end; end; end


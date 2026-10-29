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

require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class VectorExplosionAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :vectorExplosionGenerator, :basicColor, :animationBehaviorFactory

    def initialize_fields
        @vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
        @basicColor = BasicColorFactory.getInstance().WHITE
        @animationBehaviorFactory = nil
    end
    

    def initialize(basicColor, animationBehaviorFactory)
        initialize_fields
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
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    

    def getBasicColorP()
        return @basicColor
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/VectorAnimationInterface"
require "org/allbinary/animation/VectorExplosionGenerator"
require "org/allbinary/animation/VectorRotationAnimation"


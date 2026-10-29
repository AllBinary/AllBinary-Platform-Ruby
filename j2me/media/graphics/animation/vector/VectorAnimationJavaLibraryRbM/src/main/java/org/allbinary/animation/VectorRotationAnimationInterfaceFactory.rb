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

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class VectorRotationAnimationInterfaceFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :currentPoints, :basicColor, :animationBehaviorFactory

    def initialize_fields
        @currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        @basicColor = BasicColorFactory.getInstance().WHITE
        @animationBehaviorFactory = nil
    end
    

    def initialize(currentPoints, basicColor, animationBehaviorFactory)
        initialize_fields
        @currentPoints = currentPoints
        self.setBasicColorP(basicColor)
        @animationBehaviorFactory = animationBehaviorFactory
    end
    

    # throws Exception
    def getInstance(instanceId)
        return VectorRotationAnimation.new(@currentPoints, self.getBasicColorP(), @animationBehaviorFactory.getOrCreateInstance())
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/VectorRotationAnimation"


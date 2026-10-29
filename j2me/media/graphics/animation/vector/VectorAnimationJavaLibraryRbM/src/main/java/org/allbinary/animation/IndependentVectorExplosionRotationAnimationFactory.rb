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

class IndependentVectorExplosionRotationAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :framePoints, :vectorInfo, :basicColor, :vectorAnimationFactoryInterface, :vectorExplosionGenerator

    def initialize_fields
        @framePoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        @vectorInfo = nil
        @basicColor = nil
        @vectorAnimationFactoryInterface = nil
        @vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    end
    

    def initialize(vectorInfo, basicColor, vectorAnimationFactoryInterface)
        initialize_fields
        @vectorInfo = vectorInfo
        @basicColor = basicColor
        @vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
        self.init()
    end
    

    # throws Exception
    def init()
        @framePoints = VectorRotationGenerator.getInstance().getInstance(@vectorInfo)
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        frame = 0
        if animationInterface != nil
            rotationAnimationInterface = animationInterface
            frame = rotationAnimationInterface.getFrame()
        end
        points = @vectorExplosionGenerator.getInstance(@framePoints[frame], 6, @vectorExplosionGenerator.ROTATION)
        return @vectorAnimationFactoryInterface.getInstance(points, @basicColor)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/vector/VectorInfo"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/VectorAnimationFactoryInterface"
require "org/allbinary/animation/VectorExplosionGenerator"
require "org/allbinary/animation/VectorRotationGenerator"


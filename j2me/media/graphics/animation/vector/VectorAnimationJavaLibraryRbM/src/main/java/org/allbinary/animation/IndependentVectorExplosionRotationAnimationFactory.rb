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

autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :VectorInfo, "org/allbinary/vector/VectorInfo"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation"
autoload :VectorAnimationFactoryInterface, "org/allbinary/animation/VectorAnimationFactoryInterface"
autoload :VectorExplosionGenerator, "org/allbinary/animation/VectorExplosionGenerator"
autoload :VectorRotationGenerator, "org/allbinary/animation/VectorRotationGenerator"


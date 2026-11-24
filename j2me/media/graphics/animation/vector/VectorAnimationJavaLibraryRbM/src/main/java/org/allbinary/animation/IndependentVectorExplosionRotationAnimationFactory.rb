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

class IndependentVectorExplosionRotationAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :framePoints, :vectorInfo, :basicColor, :vectorAnimationFactoryInterface, :vectorExplosionGenerator

    def jfields_org_allbinary_animation_IndependentVectorExplosionRotationAnimationFactory
        @framePoints = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
        @vectorInfo = nil unless instance_variable_defined?(:@vectorInfo)
        @basicColor = nil unless instance_variable_defined?(:@basicColor)
        @vectorAnimationFactoryInterface = nil unless instance_variable_defined?(:@vectorAnimationFactoryInterface)
        @vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    end
    

    def initialize(vectorInfo, basicColor, vectorAnimationFactoryInterface)
        jfields_org_allbinary_animation_IndependentVectorExplosionRotationAnimationFactory
        @vectorInfo = vectorInfo
        @basicColor = basicColor
        @vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
        self.init()
    end
    

    # throws Exception
    def init()
        @framePoints = VectorRotationGenerator.getInstance().getInstance(@vectorInfo)
    end
    java_overload :init, 0
    

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
    java_overload :getInstanceAnimation, 1
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Vector; autoload :VectorInfo, "org/allbinary/vector/VectorInfo" unless const_defined?(:VectorInfo, false); end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)
autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false)
autoload :VectorAnimationFactoryInterface, "org/allbinary/animation/VectorAnimationFactoryInterface" unless const_defined?(:VectorAnimationFactoryInterface, false)
autoload :VectorExplosionGenerator, "org/allbinary/animation/VectorExplosionGenerator" unless const_defined?(:VectorExplosionGenerator, false)
autoload :VectorRotationGenerator, "org/allbinary/animation/VectorRotationGenerator" unless const_defined?(:VectorRotationGenerator, false)

end; end; end


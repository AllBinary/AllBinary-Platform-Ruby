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
# package org.allbinary.animation.compound

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class CompoundAnimationInterfaceFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :basicAnimationInterfaceFactoryInterfaceArrayP, :animationBehaviorFactory

    def initialize_fields
        @basicAnimationInterfaceFactoryInterfaceArrayP = nil
        @animationBehaviorFactory = nil
    end
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initialize_fields
        @basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray
        @animationBehaviorFactory = animationBehaviorFactory
    end
    

    # throws Exception
    def getInstance(instanceId)
        size = @basicAnimationInterfaceFactoryInterfaceArrayP.length
        animationInterfaceArray = self.createArray(size)
        (0...size).each do |index|
            animationInterfaceArray[index] = @basicAnimationInterfaceFactoryInterfaceArrayP[index].getInstance(instanceId)
        end
        return self.createAnimation(animationInterfaceArray)
    end
    

    def createArray(size)
        return NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY
    end
    

    def createAnimation(animationInterfaceArray)
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def getBasicAnimationInterfaceFactoryInterfaceArray()
        return @basicAnimationInterfaceFactoryInterfaceArrayP
    end
    

    def setInitialScale(scaleProperties)
        size = @basicAnimationInterfaceFactoryInterfaceArrayP.length
        (0...size).each do |index|
            @basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties)
        end
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/media/ScaleProperties"


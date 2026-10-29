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

class SimultaneousCompoundIndexAnimationInterfaceFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :basicAnimationInterfaceFactoryInterfaceArray, :animationBehaviorFactory

    def initialize_fields
        @basicAnimationInterfaceFactoryInterfaceArray = nil
        @animationBehaviorFactory = nil
    end
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        initialize_fields
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        @animationBehaviorFactory = animationBehaviorFactory
    end
    

    # throws Exception
    def getInstance(instanceId)
        size = @basicAnimationInterfaceFactoryInterfaceArray.length
        animationInterfaceArray = Array.new(size, nil)
        (0...size).each do |index|
            animationInterfaceArray[index] = @basicAnimationInterfaceFactoryInterfaceArray[index].getInstance(instanceId)
        end
        return self.getOrCreate(animationInterfaceArray)
    end
    

    def getOrCreate(animationInterfaceArray)
        return SimultaneousCompoundIndexAnimation.new(animationInterfaceArray, @animationBehaviorFactory.getOrCreateInstance())
    end
    

    def getBasicAnimationInterfaceFactoryInterfaceArray()
        return @basicAnimationInterfaceFactoryInterfaceArray
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/compound/SimultaneousCompoundIndexAnimation"


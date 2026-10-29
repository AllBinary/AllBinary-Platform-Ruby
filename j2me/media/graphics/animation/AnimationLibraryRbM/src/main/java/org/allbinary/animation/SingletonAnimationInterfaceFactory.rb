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
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class SingletonAnimationInterfaceFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :animationInterface

    def initialize_fields
        @animationInterface = nil
    end
    

    def initialize(animationInterface)
        initialize_fields
        @animationInterface = animationInterface
    end
    

    # throws Exception
    def getInstance(instanceId)
        return @animationInterface
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return @animationInterface
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/Animation"


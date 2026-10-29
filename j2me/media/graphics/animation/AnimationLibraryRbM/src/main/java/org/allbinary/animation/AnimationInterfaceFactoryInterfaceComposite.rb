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

class AnimationInterfaceFactoryInterfaceComposite
    include AnimationInterfaceFactoryInterface
    attr_accessor :animationInterfaceFactoryInterfaceArray

    def initialize_fields
        @animationInterfaceFactoryInterfaceArray = nil
    end
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray)
        initialize_fields
        @animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    end
    

    # throws Exception
    def getInstance(instanceId)
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def getAnimationInterfaceFactoryInterfaceArray()
        return @animationInterfaceFactoryInterfaceArray
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"


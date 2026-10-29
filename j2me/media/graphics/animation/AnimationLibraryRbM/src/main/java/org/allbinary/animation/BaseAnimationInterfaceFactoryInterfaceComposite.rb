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

class BaseAnimationInterfaceFactoryInterfaceComposite
    include AnimationInterfaceFactoryInterface
    attr_accessor :basicAnimationInterfaceFactoryInterfaceArray

    def initialize_fields
        @basicAnimationInterfaceFactoryInterfaceArray = nil
    end
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray)
        initialize_fields
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    end
    

    # throws Exception
    def getInstance(instanceId)
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def getBasicAnimationInterfaceFactoryInterfaceArray()
        return @basicAnimationInterfaceFactoryInterfaceArray
    end
    

    def setBasicAnimationInterfaceFactoryInterfaceArray(basicAnimationInterfaceFactoryInterfaceArray)
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/NullAnimationFactory"


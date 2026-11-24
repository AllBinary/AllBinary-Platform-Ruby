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
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation

class BaseAnimationInterfaceFactoryInterfaceComposite
    include AnimationInterfaceFactoryInterface
    attr_accessor :basicAnimationInterfaceFactoryInterfaceArray

    def jfields_org_allbinary_animation_BaseAnimationInterfaceFactoryInterfaceComposite
        @basicAnimationInterfaceFactoryInterfaceArray = nil unless instance_variable_defined?(:@basicAnimationInterfaceFactoryInterfaceArray)
    end
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray)
        jfields_org_allbinary_animation_BaseAnimationInterfaceFactoryInterfaceComposite
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    end
    

    # throws Exception
    def getInstance(instanceId)
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    java_overload :getInstance, 1
    

    def getBasicAnimationInterfaceFactoryInterfaceArray()
        return @basicAnimationInterfaceFactoryInterfaceArray
    end
    java_overload :getBasicAnimationInterfaceFactoryInterfaceArray, 0
    

    def setBasicAnimationInterfaceFactoryInterfaceArray(basicAnimationInterfaceFactoryInterfaceArray)
        @basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    end
    java_overload :setBasicAnimationInterfaceFactoryInterfaceArray, 1
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)
autoload :BasicAnimationInterfaceFactoryInterface, "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface" unless const_defined?(:BasicAnimationInterfaceFactoryInterface, false)
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false)

end; end; end


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

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Compound

class CompoundAnimationInterfaceFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :basicAnimationInterfaceFactoryInterfaceArrayP, :animationBehaviorFactory

    def jfields_org_allbinary_animation_compound_CompoundAnimationInterfaceFactory
        @basicAnimationInterfaceFactoryInterfaceArrayP = nil unless instance_variable_defined?(:@basicAnimationInterfaceFactoryInterfaceArrayP)
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        jfields_org_allbinary_animation_compound_CompoundAnimationInterfaceFactory
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
    java_overload :getInstance, 1
    

    def createArray(size)
        return ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY
    end
    java_overload :createArray, 1
    

    def createAnimation(animationInterfaceArray)
        return ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    java_overload :createAnimation, 1
    

    def getBasicAnimationInterfaceFactoryInterfaceArray()
        return @basicAnimationInterfaceFactoryInterfaceArrayP
    end
    java_overload :getBasicAnimationInterfaceFactoryInterfaceArray, 0
    

    def setInitialScale(scaleProperties)
        size = @basicAnimationInterfaceFactoryInterfaceArrayP.length
        (0...size).each do |index|
            @basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties)
        end
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end

end; end; end; end


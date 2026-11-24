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

class SimultaneousCompoundIndexAnimationInterfaceFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :basicAnimationInterfaceFactoryInterfaceArray, :animationBehaviorFactory

    def jfields_org_allbinary_animation_compound_SimultaneousCompoundIndexAnimationInterfaceFactory
        @basicAnimationInterfaceFactoryInterfaceArray = nil unless instance_variable_defined?(:@basicAnimationInterfaceFactoryInterfaceArray)
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        jfields_org_allbinary_animation_compound_SimultaneousCompoundIndexAnimationInterfaceFactory
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
    java_overload :getInstance, 1
    

    def getOrCreate(animationInterfaceArray)
        return SimultaneousCompoundIndexAnimation.new(animationInterfaceArray, @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getOrCreate, 1
    

    def getBasicAnimationInterfaceFactoryInterfaceArray()
        return @basicAnimationInterfaceFactoryInterfaceArray
    end
    java_overload :getBasicAnimationInterfaceFactoryInterfaceArray, 0
    

    def setInitialScale(scaleProperties)
    end
    java_overload :setInitialScale, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
autoload :SimultaneousCompoundIndexAnimation, "org/allbinary/animation/compound/SimultaneousCompoundIndexAnimation" unless const_defined?(:SimultaneousCompoundIndexAnimation, false)

end; end; end; end


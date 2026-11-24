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
require "org/allbinary/animation/compound/CompoundAnimationInterfaceFactory"

module ::Org; module Allbinary; module Animation; module Compound

class SimultaneousCompoundIndexedAnimationInterfaceFactory < CompoundAnimationInterfaceFactory
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        super(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    end
    

    def createArray(size)
        return Array.new(size, nil)
    end
    java_overload :createArray, 1
    

    def createAnimation(animationArray)
        return SimultaneousCompoundIndexedAnimation.new(animationArray, @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :createAnimation, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
autoload :SimultaneousCompoundIndexedAnimation, "org/allbinary/animation/compound/SimultaneousCompoundIndexedAnimation" unless const_defined?(:SimultaneousCompoundIndexedAnimation, false)

end; end; end; end


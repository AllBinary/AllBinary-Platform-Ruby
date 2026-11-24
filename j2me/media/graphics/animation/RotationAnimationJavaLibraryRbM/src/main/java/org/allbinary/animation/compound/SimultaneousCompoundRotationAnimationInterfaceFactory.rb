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

class SimultaneousCompoundRotationAnimationInterfaceFactory < CompoundAnimationInterfaceFactory
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        super(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        if animationBehaviorFactory == ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
    end
    

    def createArray(size)
        return Array.new(size, nil)
    end
    java_overload :createArray, 1
    

    def createAnimation(animationInterfaceArray)
        return SimultaneousCompoundRotationAnimation.new(animationInterfaceArray, @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :createAnimation, 1
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation" unless const_defined?(:RotationAnimation, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
autoload :SimultaneousCompoundRotationAnimation, "org/allbinary/animation/compound/SimultaneousCompoundRotationAnimation" unless const_defined?(:SimultaneousCompoundRotationAnimation, false)

end; end; end; end


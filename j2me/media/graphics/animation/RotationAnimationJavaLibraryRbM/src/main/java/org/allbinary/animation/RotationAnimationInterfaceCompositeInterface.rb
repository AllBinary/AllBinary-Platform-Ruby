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
require "org/allbinary/animation/IndexedAnimationInterfaceCompositeInterface"

module ::Org; module Allbinary; module Animation

module RotationAnimationInterfaceCompositeInterface
    include IndexedAnimationInterfaceCompositeInterface
    

    def getRotationAnimationInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getRotationAnimationInterface, 0
    

    def setFrame(index)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setFrame, 1
end

autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation" unless const_defined?(:RotationAnimation, false)

end; end; end


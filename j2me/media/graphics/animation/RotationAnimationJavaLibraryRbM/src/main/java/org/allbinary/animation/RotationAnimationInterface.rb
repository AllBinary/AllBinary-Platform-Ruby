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
require "org/allbinary/direction/DirectionalInterface"
require "org/allbinary/animation/IndexedAnimationInterface"

module ::Org; module Allbinary; module Animation

module RotationAnimationInterface
    include IndexedAnimationInterface
    include ::Org::Allbinary::Direction::DirectionalInterface
    

    def getAngleInfoP()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getAngleInfoP, 0
    

    def nextRotation()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :previousRotation, 0
end

module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end

end; end; end


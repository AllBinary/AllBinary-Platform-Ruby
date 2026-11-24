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
# package org.allbinary.animation.special

require "java/lang/JavaOverload"
require "org/allbinary/animation/IndexedAnimationInterface"

module ::Org; module Allbinary; module Animation; module Special

module SpecialAnimationInterface
    include ::Org::Allbinary::Animation::IndexedAnimationInterface
    

    def setLastFrame()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setLastFrame, 0
    

    def isComplete()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isComplete, 0
end

end; end; end; end


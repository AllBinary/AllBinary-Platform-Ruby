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
require "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation

module ProceduralAnimationInterfaceFactoryInterface
    include BasicAnimationInterfaceFactoryInterface
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getInstanceAnimation, 1
end

autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false)

end; end; end


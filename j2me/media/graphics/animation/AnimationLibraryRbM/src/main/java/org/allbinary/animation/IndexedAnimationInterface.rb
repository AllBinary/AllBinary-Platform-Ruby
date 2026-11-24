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
require "org/allbinary/animation/SequentialAnimationInterface"

module ::Org; module Allbinary; module Animation

module IndexedAnimationInterface
    include SequentialAnimationInterface
    

    def reset()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :reset, 0
    

    def setFrame(index)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getFrame, 0
end

end; end; end


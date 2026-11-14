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

require "org/allbinary/animation/AnimationInterface"

module CompoundAnimationInterface
    include AnimationInterface
    

    def nextAnimation()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def previousAnimation()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setAnimation(index)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCurrentAnimation()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation"


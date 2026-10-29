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
        raise NotImplementedError
    end
    

    def previousAnimation()
        raise NotImplementedError
    end
    

    def setAnimation(index)
        raise NotImplementedError
    end
    

    def getCurrentAnimation()
        raise NotImplementedError
    end
end

require "org/allbinary/animation/IndexedAnimation"


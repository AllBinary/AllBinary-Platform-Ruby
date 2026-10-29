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

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/IndexedAnimationInterface"

class IndexedAnimation < Animation
    include IndexedAnimationInterface
    attr_accessor :logUtil, :commonStrings, :animationBehaviorP

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @animationBehaviorP = nil
    end
    

    def initialize(animationBehavior)
        super()
        initialize_fields
        @animationBehaviorP = animationBehavior
    end
    

    def getAnimationBehavior()
        return @animationBehaviorP
    end
    

    def reset()
        @animationBehaviorP.reset()
        self.setFrame(0)
    end
    

    def setFrame(index)
    end
    

    def getFrame()
        return 0
    end
    

    # throws Exception
    def getAnimationSize()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def getSize()
        return 0
    end
    

    def previousFrame()
    end
    

    def isLastFrame()
        if self.getFrame() == self.getSize() - 1
            return true
        else
            return false
        end
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def setState(indexedAnimation)
        self.setFrame(indexedAnimation.getFrame())
        self.setDx(indexedAnimation.getDx())
        self.setDy(indexedAnimation.getDy())
    end
    

    def getWidth()
        return 0
    end
    

    def getHeight()
        return 0
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/animation/AnimationBehavior"


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
# package org.allbinary.animation.image

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/special/SpecialAnimationInterface"
require "org/allbinary/animation/image/ImageArrayAnimation"

class ImageArraySpecialAnimation < ImageArrayAnimation
    include SpecialAnimationInterface
    attr_accessor :timeDelayHelper, :loopCount, :loopCountTotal

    def initialize_fields
        @timeDelayHelper = TimeDelayHelper.new(270)
        @loopCount = 0
        @loopCountTotal = 1
    end
    

    def initialize(imageArray, animationBehavior)
        super(imageArray, animationBehavior)
        initialize_fields
        self.reset()
    end
    

    def getLoopCount()
        return @loopCount
    end
    

    def setLastFrame()
        @circularIndexUtil.setIndex(@circularIndexUtil.getSize() - 1)
    end
    

    def reset()
        self.setFrame(self.getSize() - 1)
        @loopCount = 0
    end
    

    def nextFrame()
        if self.getFrame() > 0
            if @timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
                self.previousFrame()
                if self.getFrame() == 0
                    @loopCount += 1
                end
            end
        end
    end
    

    def isComplete()
        if @loopCount < @loopCountTotal || self.getFrame() != 0
            return false
        else
            return true
        end
    end
    

    def paintXY(graphics, x, y)
        x = DisplayInfoSingleton.getInstance().getLastHalfWidth() - (self.getImage(@circularIndexUtil.getIndex()).getWidth() >> 1)
        y = 5
        super(graphics, x, y)
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"


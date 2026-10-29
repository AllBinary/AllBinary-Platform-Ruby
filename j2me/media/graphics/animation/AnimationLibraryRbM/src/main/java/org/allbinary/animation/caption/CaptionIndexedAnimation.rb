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
# package org.allbinary.animation.caption

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/media/Player"
require "org/allbinary/animation/IndexedAnimation"

class CaptionIndexedAnimation < IndexedAnimation
    attr_accessor :animationInterface, :movieIndexedAnimationInterface, :captionDx, :captionDy, :dx, :dy, :time, :END_EVENT, :timeDelayHelper, :player

    def initialize_fields
        @animationInterface = nil
        @movieIndexedAnimationInterface = nil
        @captionDx = nil
        @captionDy = nil
        @dx = nil
        @dy = nil
        @time = nil
        @END_EVENT = nil
        @timeDelayHelper = nil
        @player = nil
    end
    

    def initialize(animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @animationInterface = animationInterface
        @movieIndexedAnimationInterface = movieIndexedAnimationInterface
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
        @time = time
        @END_EVENT = AllBinaryEventObject.new(self)
        timePerFrame = @time / self.getSize()
        @timeDelayHelper = TimeDelayHelper.new(timePerFrame)
        @player = player
        @player.start()
    end
    

    # throws Exception
    def nextFrame()
        if @timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
            @movieIndexedAnimationInterface.nextFrame()
        end
        if self.isLastFrame()
            AnimationEventHandler.getInstance().fireEvent(@END_EVENT)
        end
    end
    

    def isLastFrame()
        if @movieIndexedAnimationInterface.getFrame() == self.getSize() - 1
            return true
        else
            return false
        end
    end
    

    def previousFrame()
        @movieIndexedAnimationInterface.previousFrame()
    end
    

    def setFrame(index)
        @movieIndexedAnimationInterface.setFrame(index)
    end
    

    def getFrame()
        return @movieIndexedAnimationInterface.getFrame()
    end
    

    def getSize()
        return @movieIndexedAnimationInterface.getSize()
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics, x, y)
        @animationInterface.paintXY(graphics, x + @captionDx, y + @captionDy)
        @movieIndexedAnimationInterface.paintXY(graphics, x + @captionDx + @dx, y + @captionDy + @dy)
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        @animationInterface.paintThreedXYZ(graphics, x + @captionDx, y + @captionDy, z)
        @movieIndexedAnimationInterface.paintThreedXYZ(graphics, x + @captionDx + @dx, y + @captionDy + @dy, z)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/AnimationEventHandler"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"


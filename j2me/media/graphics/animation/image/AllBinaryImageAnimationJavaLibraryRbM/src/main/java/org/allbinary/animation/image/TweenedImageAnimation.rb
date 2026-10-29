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
require "org/allbinary/animation/IndexedAnimation"

class TweenedImageAnimation < IndexedAnimation
    attr_accessor :image, :dx, :dy, :totalFrames, :circularIndexUtil, :anchor

    def initialize_fields
        @image = nil
        @dx = nil
        @dy = nil
        @totalFrames = nil
        @circularIndexUtil = nil
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(image, dx, dy, totalFrames, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @image = image
        @dx = dx
        @dy = dy
        @totalFrames = totalFrames
        @circularIndexUtil = CircularIndexUtil.createInstance(@totalFrames)
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    

    def getSize()
        return @totalFrames
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics, x, y)
        frame = self.getFrame()
        currentX = @dx * frame
        currentY = @dy * frame
        graphics.drawImage(@image, x + currentX, y + currentY, @anchor)
    end
    

    # throws Exception
    def close()
        DisposalUtil.getInstance().disposeImage(@image)
    end
    

    # throws Throwable
    def finalize()
        DisposalUtil.getInstance().disposeImage(@image)
    end
end

require "org/allbinary/DisposalUtil"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/util/CircularIndexUtil"


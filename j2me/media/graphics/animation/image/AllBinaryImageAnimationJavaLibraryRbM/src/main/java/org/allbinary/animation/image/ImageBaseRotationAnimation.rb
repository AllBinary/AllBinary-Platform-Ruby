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

require "org/allbinary/animation/RotationAnimation"

class ImageBaseRotationAnimation < RotationAnimation
    attr_accessor :image, :anchor

    def initialize_fields
        @image = nil
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(image, angleInfo, totalAngle, animationBehavior)
        super(angleInfo, CircularIndexUtil.createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        initialize_fields
        @image = image
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@image, x, y, @anchor)
    end
    

    def getImage()
        return @image
    end
    

    def getWidth()
        return @image.getWidth()
    end
    

    def getHeight()
        return @image.getHeight()
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

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :DisposalUtil, "org/allbinary/DisposalUtil"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :AngleInfo, "org/allbinary/math/AngleInfo"
autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil"


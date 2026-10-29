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

class ImageAnimation < IndexedAnimation
    attr_accessor :image, :anchor

    def initialize_fields
        @image = nil
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(image, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @image = image
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def nextFrame()
    end
    

    def previousFrame()
    end
    

    def setFrame(index)
    end
    

    def getFrame()
        return 0
    end
    

    def getSize()
        return 1
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


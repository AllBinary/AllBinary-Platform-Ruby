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

require "org/allbinary/animation/image/ImageSegmentAnimation"

class BottomToTopImageAnimation < ImageSegmentAnimation
    attr_accessor :startHeight, :currentHeight, :anchor

    def initialize_fields
        @startHeight = 0
        @currentHeight = 0
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(image, animationBehavior)
        super(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        initialize_fields
        self.setFrame(self.getSize() - 1)
    end
    

    def nextFrame()
        BottomToTopImageAnimation.superclass.instance_method(:previousFrame).bind(self).call()
        self.update()
    end
    

    def previousFrame()
        BottomToTopImageAnimation.superclass.instance_method(:nextFrame).bind(self).call()
        self.update()
    end
    

    def setFrame(index)
        super(index)
        self.update()
    end
    

    def update()
        @startHeight = self.getDrawHeight() * self.getFrame() / self.getSize()
        @currentHeight = self.getDrawHeight() - @startHeight
    end
    

    def paintXY(graphics, x, y)
        graphics.drawRegion(self.getImage(), self.getStartX(), @startHeight, self.getDrawWidth(), @currentHeight, Sprite::TRANS_NONE, x, y + @startHeight, @anchor)
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"


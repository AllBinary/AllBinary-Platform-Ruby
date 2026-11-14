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

class RightToLeftImageAnimation < ImageSegmentAnimation
    attr_accessor :startWidth, :currentWidth, :anchor

    def initialize_fields
        @startWidth = 0
        @currentWidth = 0
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(image, animationBehavior)
        super(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        initialize_fields
        self.setFrame(self.getSize() - 1)
    end
    

    def nextFrame()
        RightToLeftImageAnimation.superclass.instance_method(:previousFrame).bind(self).call()
        self.update()
    end
    

    def previousFrame()
        RightToLeftImageAnimation.superclass.instance_method(:nextFrame).bind(self).call()
        self.update()
    end
    

    def setFrame(index)
        super(index)
        self.update()
    end
    

    def update()
        @startWidth = self.getDrawWidth() * self.getFrame() / self.getSize()
        @currentWidth = self.getDrawWidth() - @startWidth
    end
    

    def paintXY(graphics, x, y)
        graphics.drawRegion(self.getImage(), @startWidth, self.getStartY(), @currentWidth, self.getDrawHeight(), Sprite::TRANS_NONE, x + @startWidth, y, @anchor)
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :Anchor, "org/allbinary/graphics/Anchor"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"


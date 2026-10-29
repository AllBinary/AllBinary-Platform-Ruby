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
# require "javax/microedition/lcdui/game/Sprite"
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
        self.class.superclass.instance_method(:previousFrame).bind(self).call()
        self.update()
    end
    

    def previousFrame()
        self.class.superclass.instance_method(:nextFrame).bind(self).call()
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

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/logic/math/PrimitiveIntUtil"


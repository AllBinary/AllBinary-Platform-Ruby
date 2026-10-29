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

class LeftToRightImageAnimation < ImageSegmentAnimation
    attr_accessor :currentWidth, :anchor

    def initialize_fields
        @currentWidth = nil
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(image, sequenceArray, animationBehavior)
        super(image, sequenceArray, animationBehavior)
        initialize_fields
        @currentWidth = 0
        if self.getSequence()[0] == -1
            self.setFrame(self.getSize() - 1)
        end
    end
    

    def nextFrame()
        if self.getSequence()[0] == -1
            self.class.superclass.instance_method(:previousFrame).bind(self).call()
        else
            super()
        end
        self.update()
    end
    

    def previousFrame()
        if self.getSequence()[0] == -1
            self.class.superclass.instance_method(:nextFrame).bind(self).call()
        else
            super()
        end
        self.update()
    end
    

    def setFrame(index)
        super(index)
        self.update()
    end
    

    def update()
        @currentWidth = self.getDrawWidth() * self.getFrame() / self.getSize()
    end
    

    def paintXY(graphics, x, y)
        graphics.drawRegion(self.getImage(), self.getStartX(), self.getStartY(), @currentWidth, self.getDrawHeight(), Sprite::TRANS_NONE, x, y, @anchor)
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/graphics/Anchor"


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
# package org.allbinary.animation.image.sprite

require "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

class AdjustedSpriteIndexedAnimation < SpriteIndexedAnimation
    attr_accessor :dx, :dy

    def initialize_fields
        @dx = nil
        @dy = nil
    end
    

    def initialize(sprite, image, basicColorArray, dx, dy, animationBehavior)
        super(sprite, image, basicColorArray, animationBehavior)
        initialize_fields
        @dx = dx
        @dy = dy
    end
    

    def paintFrame(graphics, frame, x, y)
        self.setFrame(frame)
        @sprite.setPosition(x + @dx, y + @dy)
        AdjustedSpriteIndexedAnimation.superclass.instance_method(:paint).bind(self).call(graphics)
    end
    

    def paintXY(g, x, y)
        @sprite.setPosition(x + @dx, y + @dy)
        AdjustedSpriteIndexedAnimation.superclass.instance_method(:paint).bind(self).call(g)
    end
    

    def paint(g)
        @sprite.setPosition(@dx, @dy)
        super(g)
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil"


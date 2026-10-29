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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/game/Sprite"
require "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation"

class AllBinaryAdjustedSpriteRotationAnimation < AllBinarySpriteRotationAnimation
    attr_accessor :dx, :dy

    def initialize_fields
        @dx = nil
        @dy = nil
    end
    

    def initialize(sprite, image, dx, dy, animationBehavior)
        super(sprite, image, animationBehavior)
        initialize_fields
        @dx = dx
        @dy = dy
    end
    

    def paintXY(g, x, y)
        @sprite.setPosition(x + @dx, y + @dy)
        self.paint(g)
    end
end

require "org/allbinary/animation/AnimationBehavior"


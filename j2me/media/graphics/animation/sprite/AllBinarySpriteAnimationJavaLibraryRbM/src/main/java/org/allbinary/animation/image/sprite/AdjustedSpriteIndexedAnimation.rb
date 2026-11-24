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

require "java/lang/JavaOverload"
require "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

module ::Org; module Allbinary; module Animation; module Image; module Sprite

class AdjustedSpriteIndexedAnimation < SpriteIndexedAnimation
    attr_accessor :dx, :dy

    def jfields_org_allbinary_animation_image_sprite_AdjustedSpriteIndexedAnimation
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
    end
    

    def initialize(sprite, image, basicColorArray, dx, dy, animationBehavior)
        super(sprite, image, basicColorArray, animationBehavior)
        jfields_org_allbinary_animation_image_sprite_AdjustedSpriteIndexedAnimation
        @dx = dx
        @dy = dy
    end
    

    def paintFrame(graphics, frame, x, y)
        self.setFrame(frame)
        @sprite.setPosition(x + @dx, y + @dy)
        AdjustedSpriteIndexedAnimation.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
    end
    java_overload :paintFrame, 4
    

    def paintXY(g, x, y)
        @sprite.setPosition(x + @dx, y + @dy)
        AdjustedSpriteIndexedAnimation.superclass.java_super_method(:paint, 1).bind(self).call(g)
    end
    java_overload :paintXY, 3
    

    def paint(g)
        @sprite.setPosition(@dx, @dy)
        AdjustedSpriteIndexedAnimation.superclass.java_super_method(:paint, 1).bind(self).call(g)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil" unless const_defined?(:BasicColorUtil, false); end; end; end; end

end; end; end; end; end


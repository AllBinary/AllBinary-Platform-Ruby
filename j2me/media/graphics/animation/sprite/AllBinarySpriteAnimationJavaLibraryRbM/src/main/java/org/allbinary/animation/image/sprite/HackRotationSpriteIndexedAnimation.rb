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
require "org/allbinary/animation/RotationAnimation"

module ::Org; module Allbinary; module Animation; module Image; module Sprite

class HackRotationSpriteIndexedAnimation < ::Org::Allbinary::Animation::RotationAnimation
    attr_accessor :sprite, :image

    def jfields_org_allbinary_animation_image_sprite_HackRotationSpriteIndexedAnimation
        @sprite = nil unless instance_variable_defined?(:@sprite)
        @image = nil unless instance_variable_defined?(:@image)
    end
    

    def initialize(sprite, image, angleInfo, animationBehavior)
        super(angleInfo, ::Org::Allbinary::Util::CircularIndexUtil.createInstance(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        jfields_org_allbinary_animation_image_sprite_HackRotationSpriteIndexedAnimation
        @sprite = sprite
        @image = image
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    java_overload :getAnimationSize, 0
    

    def paintFrame(g, frame, x, y)
        self.setFrame(frame)
        self.paintXY(g, x, y)
    end
    java_overload :paintFrame, 4
    

    def paintXY(g, x, y)
        @sprite.setPosition(x, y)
        self.paint(g)
    end
    java_overload :paintXY, 3
    

    def paint(g)
        @sprite.paint(g)
    end
    java_overload :paint, 1
    

    def nextRotation()
        @sprite.nextFrame()
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        @sprite.prevFrame()
    end
    java_overload :previousRotation, 0
    

    def getSize()
        return @sprite.getRawFrameCount()
    end
    java_overload :getSize, 0
    

    def setFrame(frame)
        @sprite.setFrame(frame)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @sprite.getFrame()
    end
    java_overload :getFrame, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end; end


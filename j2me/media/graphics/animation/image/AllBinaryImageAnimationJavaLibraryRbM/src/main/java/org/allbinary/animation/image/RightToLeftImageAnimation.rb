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

require "java/lang/JavaOverload"
require "org/allbinary/animation/image/ImageSegmentAnimation"

module ::Org; module Allbinary; module Animation; module Image

class RightToLeftImageAnimation < ImageSegmentAnimation
    attr_accessor :startWidth, :currentWidth, :anchor

    def jfields_org_allbinary_animation_image_RightToLeftImageAnimation
        @startWidth = 0 unless instance_variable_defined?(:@startWidth)
        @currentWidth = 0 unless instance_variable_defined?(:@currentWidth)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(image, animationBehavior)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        jfields_org_allbinary_animation_image_RightToLeftImageAnimation
        self.setFrame(self.getSize() - 1)
    end
    

    def nextFrame()
        RightToLeftImageAnimation.superclass.java_super_method(:previousFrame, 0).bind(self).call()
        self.update()
    end
    java_overload :nextFrame, 0
    

    def previousFrame()
        RightToLeftImageAnimation.superclass.java_super_method(:nextFrame, 0).bind(self).call()
        self.update()
    end
    java_overload :previousFrame, 0
    

    def setFrame(index)
        RightToLeftImageAnimation.superclass.java_super_method(:setFrame, 1).bind(self).call(index)
        self.update()
    end
    java_overload :setFrame, 1
    

    def update()
        @startWidth = self.getDrawWidth() * self.getFrame() / self.getSize()
        @currentWidth = self.getDrawWidth() - @startWidth
    end
    java_overload :update, 0
    

    def paintXY(graphics, x, y)
        graphics.drawRegion(self.getImage(), @startWidth, self.getStartY(), @currentWidth, self.getDrawHeight(), ::Javax::Microedition::Lcdui::Game::Sprite::TRANS_NONE, x + @startWidth, y, @anchor)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end

end; end; end; end


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
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/graphics/color/ColorCompositeInterface"

module ::Org; module Allbinary; module Animation; module Image; module Sprite

class SpriteIndexedAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    include ::Org::Allbinary::Graphics::Color::ColorCompositeInterface
    attr_accessor :sprite, :image, :basicColorArray

    def jfields_org_allbinary_animation_image_sprite_SpriteIndexedAnimation
        @sprite = nil unless instance_variable_defined?(:@sprite)
        @image = nil unless instance_variable_defined?(:@image)
        @basicColorArray = nil unless instance_variable_defined?(:@basicColorArray)
    end
    

    def initialize(sprite, image, basicColorArray, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_image_sprite_SpriteIndexedAnimation
        @sprite = sprite
        @image = image
        @basicColorArray = basicColorArray
        if @basicColorArray.length != 0 && self.getSize() != @basicColorArray.length
            raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().TOTAL_LABEL).appendint(self.getSize()).append("!=").appendint(@basicColorArray.length).to_s)
        end
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    java_overload :getAnimationSize, 0
    

    def setBasicColorP(basicColor)
        (0...@basicColorArray.length).each do |index|
            if basicColor == @basicColorArray[index]
                self.setFrame(index)
                break
            end
        end
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        if @basicColorArray.length < self.getFrame()
            return @basicColorArray[self.getFrame()]
        else
            return ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        end
    end
    java_overload :getBasicColorP, 0
    

    def paintFrame(graphics, frame, x, y)
        self.setFrame(frame)
        @sprite.setPosition(x, y)
        @sprite.paint(graphics)
    end
    java_overload :paintFrame, 4
    

    def paintXY(graphics, x, y)
        @sprite.setPosition(x, y)
        @sprite.paint(graphics)
    end
    java_overload :paintXY, 3
    

    def paint(graphics)
        @sprite.paint(graphics)
    end
    java_overload :paint, 1
    

    def nextFrame()
        @sprite.nextFrame()
    end
    java_overload :nextFrame, 0
    

    def previousFrame()
        @sprite.prevFrame()
    end
    java_overload :previousFrame, 0
    

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
    

    def isLastFrame()
        if @sprite.getFrame() == self.getSize() - 1
            return true
        else
            return false
        end
    end
    java_overload :isLastFrame, 0
    

    def getLastFrame()
        return self.getSize()
    end
    java_overload :getLastFrame, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    # throws Exception
    def close()
    end
    java_overload :close, 0
    

    # throws Throwable
    def finalize()
    end
    java_overload :finalize, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

end; end; end; end; end


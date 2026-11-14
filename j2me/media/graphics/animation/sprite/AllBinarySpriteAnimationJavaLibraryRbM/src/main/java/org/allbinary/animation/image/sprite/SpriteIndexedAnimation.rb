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

require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/graphics/color/ColorCompositeInterface"

class SpriteIndexedAnimation < IndexedAnimation
    include ColorCompositeInterface
    attr_accessor :sprite, :image, :basicColorArray

    def initialize_fields
        @sprite = nil
        @image = nil
        @basicColorArray = nil
    end
    

    def initialize(sprite, image, basicColorArray, animationBehavior)
        super(animationBehavior)
        initialize_fields
        @sprite = sprite
        @image = image
        @basicColorArray = basicColorArray
        if @basicColorArray.length != 0 && self.getSize() != @basicColorArray.length
            raise StandardError.new(StringMaker.new().append(CommonLabels.getInstance().TOTAL_LABEL).appendint(self.getSize()).append("!=").appendint(@basicColorArray.length).to_s)
        end
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def setBasicColorP(basicColor)
        (0...@basicColorArray.length).each do |index|
            if basicColor == @basicColorArray[index]
                self.setFrame(index)
                break
            end
        end
    end
    

    def getBasicColorP()
        if @basicColorArray.length < self.getFrame()
            return @basicColorArray[self.getFrame()]
        else
            return BasicColorFactory.getInstance().WHITE
        end
    end
    

    def paintFrame(graphics, frame, x, y)
        self.setFrame(frame)
        @sprite.setPosition(x, y)
        @sprite.paint(graphics)
    end
    

    def paintXY(graphics, x, y)
        @sprite.setPosition(x, y)
        @sprite.paint(graphics)
    end
    

    def paint(graphics)
        @sprite.paint(graphics)
    end
    

    def nextFrame()
        @sprite.nextFrame()
    end
    

    def previousFrame()
        @sprite.prevFrame()
    end
    

    def getSize()
        return @sprite.getRawFrameCount()
    end
    

    def setFrame(frame)
        @sprite.setFrame(frame)
    end
    

    def getFrame()
        return @sprite.getFrame()
    end
    

    def isLastFrame()
        if @sprite.getFrame() == self.getSize() - 1
            return true
        else
            return false
        end
    end
    

    def getLastFrame()
        return self.getSize()
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    # throws Exception
    def close()
    end
    

    # throws Throwable
    def finalize()
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"


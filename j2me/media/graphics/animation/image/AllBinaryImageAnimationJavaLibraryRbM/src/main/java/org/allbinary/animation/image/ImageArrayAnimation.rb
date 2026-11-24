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
require "org/allbinary/animation/IndexedAnimation"

module ::Org; module Allbinary; module Animation; module Image

class ImageArrayAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    attr_accessor :imageArray, :totalFrames, :circularIndexUtil, :anchor

    def jfields_org_allbinary_animation_image_ImageArrayAnimation
        @imageArray = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE_ARRAY
        @totalFrames = 0 unless instance_variable_defined?(:@totalFrames)
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil::NULL_CIRCULAR_INDEX_UTIL
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(imageArray, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_image_ImageArrayAnimation
        self.setImageArray(imageArray)
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    java_overload :getAnimationSize, 0
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    java_overload :nextFrame, 0
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    java_overload :previousFrame, 0
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    java_overload :getFrame, 0
    

    def getSize()
        return @totalFrames
    end
    java_overload :getSize, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def getImage(index)
        return @imageArray[index]
    end
    java_overload :getImage, 1
    

    def getImageArray()
        return @imageArray
    end
    java_overload :getImageArray, 0
    

    def setImageArray(imageArray)
        @imageArray = imageArray
        @totalFrames = imageArray.length
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@totalFrames)
    end
    java_overload :setImageArray, 1
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@imageArray[@circularIndexUtil.getIndex()], x, y, @anchor)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end


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
require "org/allbinary/animation/RotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class ImageArrayBaseRotationAnimation < ::Org::Allbinary::Animation::RotationAnimation
    attr_accessor :imageModifierUtil, :originalImageArray, :imageArray, :currentImage, :totalFrames, :anchor

    def jfields_org_allbinary_animation_image_ImageArrayBaseRotationAnimation
        @imageModifierUtil = ::Org::Allbinary::Media::Image::ImageModifierUtil.getInstanceOrCreate()
        @originalImageArray = nil unless instance_variable_defined?(:@originalImageArray)
        @imageArray = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE_ARRAY
        @currentImage = nil unless instance_variable_defined?(:@currentImage)
        @totalFrames = 0 unless instance_variable_defined?(:@totalFrames)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(originalImageArray, angleInfo, animationBehavior)
        super(angleInfo, ::Org::Allbinary::Util::CircularIndexUtil.createInstance(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        jfields_org_allbinary_animation_image_ImageArrayBaseRotationAnimation
        @originalImageArray = originalImageArray
        self.setImageArray(@imageModifierUtil.getImageArray(originalImageArray))
        @currentImage = @imageArray[@circularIndexUtil.getIndex()]
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    java_overload :getAnimationSize, 0
    

    def setAlpha(alpha)
        if @alphaP != alpha
            ImageArrayBaseRotationAnimation.superclass.java_super_method(:setAlpha, 1).bind(self).call(alpha)
            @imageModifierUtil.reset()
            index = @circularIndexUtil.getIndex()
            @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        end
    end
    java_overload :setAlpha, 1
    

    def nextRotation()
        ImageArrayBaseRotationAnimation.superclass.java_super_method(:nextRotation, 0).bind(self).call()
        index = @circularIndexUtil.getIndex()
        @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        @currentImage = @imageArray[index]
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        ImageArrayBaseRotationAnimation.superclass.java_super_method(:previousRotation, 0).bind(self).call()
        index = @circularIndexUtil.getIndex()
        @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        @currentImage = @imageArray[index]
    end
    java_overload :previousRotation, 0
    

    def setFrame(index2)
        ImageArrayBaseRotationAnimation.superclass.java_super_method(:setFrame, 1).bind(self).call(index2)
        index = @circularIndexUtil.getIndex()
        @imageModifierUtil.setAlpha(@originalImageArray[index], @imageArray[index], index, @alphaP)
        @currentImage = @imageArray[index]
    end
    java_overload :setFrame, 1
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def setImageArray(imageArray)
        @imageArray = imageArray
        @totalFrames = imageArray.length
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@totalFrames)
    end
    java_overload :setImageArray, 1
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@currentImage, x, y, @anchor)
    end
    java_overload :paintXY, 3
    

    # throws Exception
    def close()
        disposalUtil = ::Org::Allbinary::DisposalUtil.getInstance()
        size2 = @imageArray.length
        (0...size2).each do |index|
            disposalUtil.disposeImage(@imageArray[index])
        end
        size = @originalImageArray.length
        (0...size).each do |index|
            disposalUtil.disposeImage(@originalImageArray[index])
        end
        disposalUtil.disposeImage(@currentImage)
    end
    java_overload :close, 0
    

    # throws Throwable
    def finalize()
        disposalUtil = ::Org::Allbinary::DisposalUtil.getInstance()
        size2 = @imageArray.length
        (0...size2).each do |index|
            disposalUtil.disposeImage(@imageArray[index])
        end
        size = @originalImageArray.length
        (0...size).each do |index|
            disposalUtil.disposeImage(@originalImageArray[index])
        end
        disposalUtil.disposeImage(@currentImage)
    end
    java_overload :finalize, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; autoload :DisposalUtil, "org/allbinary/DisposalUtil" unless const_defined?(:DisposalUtil, false); end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageModifierUtil, "org/allbinary/media/image/ImageModifierUtil" unless const_defined?(:ImageModifierUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end


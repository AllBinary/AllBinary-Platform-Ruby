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
require "org/allbinary/animation/image/ImageBaseRotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class AllBinaryFlickerAndroidImageRotationAnimation < ImageBaseRotationAnimation
    attr_accessor :imageModifierUtil, :androidImageUtil, :matrix, :halfWidth, :halfHeight, :increment, :originalImage

    def jfields_org_allbinary_animation_image_AllBinaryFlickerAndroidImageRotationAnimation
        @imageModifierUtil = ::Org::Allbinary::Media::Image::ImageModifierUtil.getInstanceOrCreate()
        @androidImageUtil = ::Org::Allbinary::Media::Image::AndroidImageUtil.getInstance()
        @matrix = ::Android::Graphics::Matrix.new()
        @halfWidth = nil unless instance_variable_defined?(:@halfWidth)
        @halfHeight = nil unless instance_variable_defined?(:@halfHeight)
        @increment = nil unless instance_variable_defined?(:@increment)
        @originalImage = nil unless instance_variable_defined?(:@originalImage)
    end
    

    def initialize(originalImage, image, angleInfo, totalAngle, animationBehavior)
        super(image, angleInfo, totalAngle, animationBehavior)
        jfields_org_allbinary_animation_image_AllBinaryFlickerAndroidImageRotationAnimation
        @originalImage = originalImage
        @halfWidth = (image.getWidth() >> 1)
        @halfHeight = (image.getHeight() >> 1)
        @increment = (((((@angleInfo.getAngleIncrementInfo().getAngleIncrement())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768)
    end
    

    def setBasicColorP(basicColor)
        changed = false
        if self.getBasicColorP() == nil || self.getBasicColorP().to_i != basicColor.to_i
            @imageModifierUtil.setColor(@originalImage, self.getImage(), 0, basicColor)
            changed = true
        end
        AllBinaryFlickerAndroidImageRotationAnimation.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
        if changed
            @matrix.setRotate(0.0, (@halfWidth).to_f, (@halfHeight).to_f)
            self.updateImage()
        end
    end
    java_overload :setBasicColorP, 1
    

    def changeBasicColor(basicColor)
        self.setBasicColorP(basicColor)
    end
    java_overload :changeBasicColor, 1
    

    def setAlpha(alpha)
        changed = false
        if @alphaP != alpha
            changed = true
        end
        AllBinaryFlickerAndroidImageRotationAnimation.superclass.java_super_method(:setAlpha, 1).bind(self).call(alpha)
        @imageModifierUtil.setAlpha(@originalImage, self.getImage(), 0, @alphaP)
        if changed
            @matrix.setRotate(0.0, (@halfWidth).to_f, (@halfHeight).to_f)
            self.updateImage()
        end
    end
    java_overload :setAlpha, 1
    

    def nextRotation()
        AllBinaryFlickerAndroidImageRotationAnimation.superclass.java_super_method(:nextRotation, 0).bind(self).call()
        @matrix.setRotate((@increment).to_f, (@halfWidth).to_f, (@halfHeight).to_f)
        self.updateImage()
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        AllBinaryFlickerAndroidImageRotationAnimation.superclass.java_super_method(:previousRotation, 0).bind(self).call()
        @matrix.setRotate((-@increment).to_f, (@halfWidth).to_f, (@halfHeight).to_f)
        self.updateImage()
    end
    java_overload :previousRotation, 0
    

    def updateImage()
        @androidImageUtil.rotate(self.getImage(), @originalImage, @matrix, @imageModifierUtil.paint)
    end
    java_overload :updateImage, 0
    

    def setFrame(index)
        currentFrame = @circularIndexUtil.getIndex()
        @circularIndexUtil.setIndex(index)
        newFrame = @circularIndexUtil.getIndex()
        @angleInfo.adjustAngle(newFrame)
        @matrix.setRotate(((newFrame - currentFrame)).to_f * (@increment).to_f, (@halfWidth).to_f, (@halfHeight).to_f)
        self.updateImage()
    end
    java_overload :setFrame, 1
end

module ::Android; module Graphics; autoload :Matrix, "android/graphics/Matrix" unless const_defined?(:Matrix, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :AndroidImageUtil, "org/allbinary/media/image/AndroidImageUtil" unless const_defined?(:AndroidImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageModifierUtil, "org/allbinary/media/image/ImageModifierUtil" unless const_defined?(:ImageModifierUtil, false); end; end; end; end

end; end; end; end


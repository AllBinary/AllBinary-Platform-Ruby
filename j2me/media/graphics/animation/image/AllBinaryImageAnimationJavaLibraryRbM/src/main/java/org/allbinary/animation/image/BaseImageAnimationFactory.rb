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
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Image

class BaseImageAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :animationFactoryImageScaleUtil, :image, :animationBehaviorFactory, :sequenceArray, :animationFactoryInitializationVisitor, :scaleProperties

    def jfields_org_allbinary_animation_image_BaseImageAnimationFactory
        @animationFactoryImageScaleUtil = ::Org::Allbinary::Image::AnimationFactoryImageScaleUtil.getInstance()
        @image = nil unless instance_variable_defined?(:@image)
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
        @sequenceArray = nil unless instance_variable_defined?(:@sequenceArray)
        @animationFactoryInitializationVisitor = nil unless instance_variable_defined?(:@animationFactoryInitializationVisitor)
        @scaleProperties = ::Org::Allbinary::Media::ScaleProperties.instance
    end
    

    # throws Exception
    def self.createFactoryBase(image, sequenceArray, width, height, animationBehaviorFactory)
        return BaseImageAnimationFactory.new(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_BaseImageAnimationFactory
        @animationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor.new()
        @image = image
        @animationFactoryInitializationVisitor.width = width
        @animationFactoryInitializationVisitor.height = height
        @animationBehaviorFactory = animationBehaviorFactory
        @sequenceArray = sequenceArray
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
    end
    

    # throws Exception
    def getInstance(instanceId)
        return ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(instanceId)
    end
    java_overload :getInstance, 1
    

    def getImage()
        return @image
    end
    java_overload :getImage, 0
    

    def getSequenceArray()
        return @sequenceArray
    end
    java_overload :getSequenceArray, 0
    

    def setInitialScale(scaleProperties)
        @scaleProperties = scaleProperties
        if @scaleProperties.shouldScale
            @scaleProperties.scaleWidth = (((@animationFactoryInitializationVisitor.width * @scaleProperties.scaleX)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            @scaleProperties.scaleHeight = (((@animationFactoryInitializationVisitor.height * @scaleProperties.scaleY)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        else
        end
    end
    java_overload :setInitialScale, 1
    

    def getAnimationFactoryInitializationVisitorP()
        return @animationFactoryInitializationVisitor
    end
    java_overload :getAnimationFactoryInitializationVisitorP, 0
    

    def getScalePropertiesP()
        return @scaleProperties
    end
    java_overload :getScalePropertiesP, 0
    

    def toString()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(((@image.getHeight()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(@animationFactoryInitializationVisitor.to_s)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :AnimationFactoryImageScaleUtil, "org/allbinary/image/AnimationFactoryImageScaleUtil" unless const_defined?(:AnimationFactoryImageScaleUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :AnimationFactoryInitializationVisitor, "org/allbinary/animation/image/AnimationFactoryInitializationVisitor" unless const_defined?(:AnimationFactoryInitializationVisitor, false)

end; end; end; end


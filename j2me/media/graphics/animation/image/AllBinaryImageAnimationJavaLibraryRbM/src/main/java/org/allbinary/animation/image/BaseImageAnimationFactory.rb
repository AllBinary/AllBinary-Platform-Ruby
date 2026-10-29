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

# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class BaseImageAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :animationFactoryImageScaleUtil, :image, :animationBehaviorFactory, :sequenceArray, :animationFactoryInitializationVisitor, :scaleProperties

    def initialize_fields
        @animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
        @image = nil
        @animationBehaviorFactory = nil
        @sequenceArray = nil
        @animationFactoryInitializationVisitor = nil
        @scaleProperties = ScaleProperties.instance
    end
    

    # throws Exception
    def self.createFactoryBase(image, sequenceArray, width, height, animationBehaviorFactory)
        return BaseImageAnimationFactory.new(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initialize_fields
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
        return NullAnimationFactory.getFactoryInstance().getInstance(instanceId)
    end
    

    def getImage()
        return @image
    end
    

    def getSequenceArray()
        return @sequenceArray
    end
    

    def setInitialScale(scaleProperties)
        @scaleProperties = scaleProperties
        if @scaleProperties.shouldScale
            @scaleProperties.scaleWidth = ((@animationFactoryInitializationVisitor.width * @scaleProperties.scaleX)).to_i
            @scaleProperties.scaleHeight = ((@animationFactoryInitializationVisitor.height * @scaleProperties.scaleY)).to_i
        else
        end
    end
    

    def getAnimationFactoryInitializationVisitorP()
        return @animationFactoryInitializationVisitor
    end
    

    def getScalePropertiesP()
        return @scaleProperties
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        commonLabels = CommonLabels.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint((@image.getHeight()).to_i)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(@animationFactoryInitializationVisitor.to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/image/AnimationFactoryImageScaleUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/animation/image/AnimationFactoryInitializationVisitor"


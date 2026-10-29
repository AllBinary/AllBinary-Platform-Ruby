# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/RotationAnimation"

class LazyImageRotationAnimation < RotationAnimation
    attr_accessor :logUtil, :layoutIndex, :instanceId, :animationInterfaceFactoryInterface, :NULL_INDEX_ANIMATION, :animation, :scaleProperties

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @layoutIndex = nil
        @instanceId = nil
        @animationInterfaceFactoryInterface = nil
        @NULL_INDEX_ANIMATION = nil
        @animation = nil
        @scaleProperties = ScaleProperties.instance
    end
    

    def initialize(layoutIndex, instanceId, scaleProperties, animationInterfaceFactoryInterface, animationBehavior)
        super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        initialize_fields
        @layoutIndex = layoutIndex
        @instanceId = instanceId
        @animationInterfaceFactoryInterface = animationInterfaceFactoryInterface
        imageCache = ImageCacheFactory.getInstance()
        imageCache.add(self)
        @scaleProperties = scaleProperties
        @NULL_INDEX_ANIMATION = NullRotationAnimationFactory.getFactoryInstance().getInstance(0)
        class ActualRotationAnimation < RotationAnimation
            attr_accessor :lazyImageRotationAnimation, :index

            def initialize_fields
                @lazyImageRotationAnimation = nil
                @index = 0
            end
            

            def initialize(lazyImageRotationAnimation)
                super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), @animationBehavior)
                initialize_fields
                @lazyImageRotationAnimation = lazyImageRotationAnimation
            end
            

            def setFrame(index)
                @index = index
            end
            

            def getFrame()
                return @index
            end
            

            def paintXY(graphics, x, y)
                begin
                    ImageCacheFactory.getInstance().insertFirst(self)
                    @lazyImageRotationAnimation.animation = @lazyImageRotationAnimation.NULL_INDEX_ANIMATION
                rescue StandardError => e
                    logUtil = LogUtil.getInstance()
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
            

            def paintThreedXYZ(graphics, x, y, z)
                begin
                    ImageCacheFactory.getInstance().insertFirst(self)
                    @lazyImageRotationAnimation.animation = @lazyImageRotationAnimation.NULL_INDEX_ANIMATION
                rescue StandardError => e
                    logUtil = LogUtil.getInstance()
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
        end
        @animation = ActualRotationAnimation.new(self)
    end
    

    def setRealAnimation()
        begin
            animation = @animation
            @animationInterfaceFactoryInterface.setInitialScale(@scaleProperties)
            @animation = @animationInterfaceFactoryInterface.getInstance(@instanceId)
            @animation.setState(animation)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, LazyImageRotationAnimation::SET_REAL_ANIMATION, e)
        end
    end
    

    def setScale(scaleX, scaleY)
        @animation.setScale(scaleX, scaleY)
    end
    

    def getAnimationBehavior()
        return @animation.getAnimationBehavior()
    end
    

    # throws Exception
    def set(gl)
        @animation.set(gl)
    end
    

    def setAlpha(alpha)
        @animation.setAlpha(alpha)
    end
    

    def setDx(dx)
        @animation.setDx(dx)
    end
    

    def setDy(dy)
        @animation.setDy(dy)
    end
    

    def setMaxScale(maxScaleX, maxScaleY)
        @animation.setMaxScale(maxScaleX, maxScaleY)
    end
    

    def nextRotation()
        rotationAnimation = (@animation)
        rotationAnimation.nextRotation()
    end
    

    def previousRotation()
        rotationAnimation = (@animation)
        rotationAnimation.previousRotation()
    end
    

    def nextRotationX()
        rotationAnimation = (@animation)
        rotationAnimation.nextRotationX()
    end
    

    def previousRotationX()
        rotationAnimation = (@animation)
        rotationAnimation.previousRotationX()
    end
    

    def nextRotationZ()
        rotationAnimation = (@animation)
        rotationAnimation.nextRotationZ()
    end
    

    def previousRotationZ()
        rotationAnimation = (@animation)
        rotationAnimation.previousRotationZ()
    end
    

    def changeBasicColor(basicColor)
        @animation.changeBasicColor(basicColor)
    end
    

    def getBasicColorP()
        return @animation.getBasicColorP()
    end
    

    def getChangeBasicColor()
        return @animation.getChangeBasicColor()
    end
    

    def getChangeColor()
        return @animation.getChangeColor()
    end
    

    def getColor()
        return @animation.getColor()
    end
    

    def getDx()
        return @animation.getDx()
    end
    

    def getDy()
        return @animation.getDy()
    end
    

    def isThreed()
        return @animation.isThreed()
    end
    

    # throws Exception
    def nextFrame()
        @animation.nextFrame()
    end
    

    def reset()
        @animation.reset()
    end
    

    def setFrame(index)
        @animation.setFrame(index)
    end
    

    def getFrame()
        return @animation.getFrame()
    end
    

    # throws Exception
    def getAnimationSize()
        return @animation.getAnimationSize()
    end
    

    def getSize()
        return @animation.getSize()
    end
    

    def previousFrame()
        @animation.previousFrame()
    end
    

    def isLastFrame()
        return @animation.isLastFrame()
    end
    

    def setSequence(sequence)
        @animation.setSequence(sequence)
    end
    

    def getSequence()
        return @animation.getSequence()
    end
    

    def getWidth()
        return @animation.getWidth()
    end
    

    def paintXY(graphics, x, y)
        begin
            @animation.paintXY(graphics, x, y)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        begin
            @animation.paintThreedXYZ(graphics, x, y, z)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        image = @animationInterfaceFactoryInterface.getImage()
        return StringMaker.new().append(super.to_s).append(commonSeps.SPACE).append(image.getName()).append(commonSeps.SPACE).appendint((image.getWidth()).to_i).append(commonSeps.SPACE).appendint((image.getHeight()).to_i).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/NullRotationAnimationFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/image/ImageCache"
require "org/allbinary/image/ImageCacheFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/animation/image/BaseImageAnimationFactory"

class LazyImageRotationAnimation
    SET_REAL_ANIMATION = "setRealAnimation"
end


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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/animation/RotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class LazyImageRotationAnimation < ::Org::Allbinary::Animation::RotationAnimation
    attr_accessor :logUtil, :layoutIndex, :instanceId, :animationInterfaceFactoryInterface, :NULL_INDEX_ANIMATION, :animation, :scaleProperties
class ActualRotationAnimation < ::Org::Allbinary::Animation::RotationAnimation
            attr_accessor :lazyImageRotationAnimation, :index

            def jfields_org_allbinary_animation_image_LazyImageRotationAnimation_ActualRotationAnimation
                @lazyImageRotationAnimation = nil unless instance_variable_defined?(:@lazyImageRotationAnimation)
                @index = 0 unless instance_variable_defined?(:@index)
            end
            

            def initialize(lazyImageRotationAnimation)
                super(::Org::Allbinary::MathPackage::AngleInfo.getInstance(::Org::Allbinary::MathPackage::AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), ::Org::Allbinary::Util::CircularIndexUtil.createInstance(4), @animationBehavior)
                jfields_org_allbinary_animation_image_LazyImageRotationAnimation
                @lazyImageRotationAnimation = lazyImageRotationAnimation
            end
            

            def setFrame(index)
                @index = index
            end
            java_overload :setFrame, 1
            

            def getFrame()
                return @index
            end
            java_overload :getFrame, 0
            

            def paintXY(graphics, x, y)
                begin
                    ::Org::Allbinary::Image::ImageCacheFactory.getInstance().insertFirst(self)
                    @lazyImageRotationAnimation.animation = @lazyImageRotationAnimation.NULL_INDEX_ANIMATION
                rescue StandardError => e
                    logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
            java_overload :paintXY, 3
            

            def paintThreedXYZ(graphics, x, y, z)
                begin
                    ::Org::Allbinary::Image::ImageCacheFactory.getInstance().insertFirst(self)
                    @lazyImageRotationAnimation.animation = @lazyImageRotationAnimation.NULL_INDEX_ANIMATION
                rescue StandardError => e
                    logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
                end
            end
            java_overload :paintThreedXYZ, 4
        end

    def jfields_org_allbinary_animation_image_LazyImageRotationAnimation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @layoutIndex = nil unless instance_variable_defined?(:@layoutIndex)
        @instanceId = nil unless instance_variable_defined?(:@instanceId)
        @animationInterfaceFactoryInterface = nil unless instance_variable_defined?(:@animationInterfaceFactoryInterface)
        @NULL_INDEX_ANIMATION = nil unless instance_variable_defined?(:@NULL_INDEX_ANIMATION)
        @animation = nil unless instance_variable_defined?(:@animation)
        @scaleProperties = ::Org::Allbinary::Media::ScaleProperties.instance
    end
    

    def initialize(layoutIndex, instanceId, scaleProperties, animationInterfaceFactoryInterface, animationBehavior)
        super(::Org::Allbinary::MathPackage::AngleInfo.getInstance(::Org::Allbinary::MathPackage::AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), ::Org::Allbinary::Util::CircularIndexUtil.createInstance(4), animationBehavior)
        jfields_org_allbinary_animation_image_LazyImageRotationAnimation
        @layoutIndex = layoutIndex
        @instanceId = instanceId
        @animationInterfaceFactoryInterface = animationInterfaceFactoryInterface
        imageCache = ::Org::Allbinary::Image::ImageCacheFactory.getInstance()
        imageCache.add(self)
        @scaleProperties = scaleProperties
        @NULL_INDEX_ANIMATION = ::Org::Allbinary::Animation::NullRotationAnimationFactory.getFactoryInstance().getInstance(0)
        # local class ActualRotationAnimation is defined in the class body
        @animation = ActualRotationAnimation.new(self)
    end
    

    def setRealAnimation()
        begin
            animation = @animation
            @animationInterfaceFactoryInterface.setInitialScale(@scaleProperties)
            @animation = @animationInterfaceFactoryInterface.getInstance(@instanceId)
            @animation.setState(animation)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, SET_REAL_ANIMATION, e)
        end
    end
    java_overload :setRealAnimation, 0
    

    def setScale(scaleX, scaleY)
        @animation.setScale(scaleX, scaleY)
    end
    java_overload :setScale, 2
    

    def getAnimationBehavior()
        return @animation.getAnimationBehavior()
    end
    java_overload :getAnimationBehavior, 0
    

    # throws Exception
    def set(gl)
        @animation.set(gl)
    end
    java_overload :set, 1
    

    def setAlpha(alpha)
        @animation.setAlpha(alpha)
    end
    java_overload :setAlpha, 1
    

    def setDx(dx)
        @animation.setDx(dx)
    end
    java_overload :setDx, 1
    

    def setDy(dy)
        @animation.setDy(dy)
    end
    java_overload :setDy, 1
    

    def setMaxScale(maxScaleX, maxScaleY)
        @animation.setMaxScale(maxScaleX, maxScaleY)
    end
    java_overload :setMaxScale, 2
    

    def nextRotation()
        rotationAnimation = (@animation)
        rotationAnimation.nextRotation()
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        rotationAnimation = (@animation)
        rotationAnimation.previousRotation()
    end
    java_overload :previousRotation, 0
    

    def nextRotationX()
        rotationAnimation = (@animation)
        rotationAnimation.nextRotationX()
    end
    java_overload :nextRotationX, 0
    

    def previousRotationX()
        rotationAnimation = (@animation)
        rotationAnimation.previousRotationX()
    end
    java_overload :previousRotationX, 0
    

    def nextRotationZ()
        rotationAnimation = (@animation)
        rotationAnimation.nextRotationZ()
    end
    java_overload :nextRotationZ, 0
    

    def previousRotationZ()
        rotationAnimation = (@animation)
        rotationAnimation.previousRotationZ()
    end
    java_overload :previousRotationZ, 0
    

    def changeBasicColor(basicColor)
        @animation.changeBasicColor(basicColor)
    end
    java_overload :changeBasicColor, 1
    

    def getBasicColorP()
        return @animation.getBasicColorP()
    end
    java_overload :getBasicColorP, 0
    

    def getChangeBasicColor()
        return @animation.getChangeBasicColor()
    end
    java_overload :getChangeBasicColor, 0
    

    def getChangeColor()
        return @animation.getChangeColor()
    end
    java_overload :getChangeColor, 0
    

    def getColor()
        return @animation.getColor()
    end
    java_overload :getColor, 0
    

    def getDx()
        return @animation.getDx()
    end
    java_overload :getDx, 0
    

    def getDy()
        return @animation.getDy()
    end
    java_overload :getDy, 0
    

    def isThreed()
        return @animation.isThreed()
    end
    java_overload :isThreed, 0
    

    # throws Exception
    def nextFrame()
        @animation.nextFrame()
    end
    java_overload :nextFrame, 0
    

    def reset()
        @animation.reset()
    end
    java_overload :reset, 0
    

    def setFrame(index)
        @animation.setFrame(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @animation.getFrame()
    end
    java_overload :getFrame, 0
    

    # throws Exception
    def getAnimationSize()
        return @animation.getAnimationSize()
    end
    java_overload :getAnimationSize, 0
    

    def getSize()
        return @animation.getSize()
    end
    java_overload :getSize, 0
    

    def previousFrame()
        @animation.previousFrame()
    end
    java_overload :previousFrame, 0
    

    def isLastFrame()
        return @animation.isLastFrame()
    end
    java_overload :isLastFrame, 0
    

    def setSequence(sequence)
        @animation.setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return @animation.getSequence()
    end
    java_overload :getSequence, 0
    

    def getWidth()
        return @animation.getWidth()
    end
    java_overload :getWidth, 0
    

    def paintXY(graphics, x, y)
        begin
            @animation.paintXY(graphics, x, y)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    java_overload :paintXY, 3
    

    def paintThreedXYZ(graphics, x, y, z)
        begin
            @animation.paintThreedXYZ(graphics, x, y, z)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    java_overload :paintThreedXYZ, 4
    

    def toString()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        image = @animationInterfaceFactoryInterface.getImage()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(super.to_s).append(commonSeps.SPACE).append(image.getName()).append(commonSeps.SPACE).appendint(((image.getWidth()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(commonSeps.SPACE).appendint(((image.getHeight()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:SET_REAL_ANIMATION, "setRealAnimation")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LazyImageRotationAnimation"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SET_REAL_ANIMATION].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullRotationAnimationFactory, "org/allbinary/animation/NullRotationAnimationFactory" unless const_defined?(:NullRotationAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :BaseImageAnimationFactory, "org/allbinary/animation/image/BaseImageAnimationFactory" unless const_defined?(:BaseImageAnimationFactory, false)

begin
    LazyImageRotationAnimation.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


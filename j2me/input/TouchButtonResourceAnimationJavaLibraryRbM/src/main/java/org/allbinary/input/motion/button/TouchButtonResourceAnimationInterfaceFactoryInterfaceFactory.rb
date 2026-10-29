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
# package org.allbinary.input.motion.button

# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory"

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory < BaseResourceAnimationInterfaceFactoryInterfaceFactory
    

    def self.createFactory()
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.new("TouchButton Animations")
    end
    

    def initialize(name)
        super(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable())
    end
    

    # throws Exception
    def init(level)
        self.initImageCache(ImageCacheFactory.getInstance(), level)
    end
    

    # throws Exception
    def initImageCache(imageCache, level)
        if self.isInitialized()
            return
        end
        portion = 140
        loadingString = StringMaker.new().append(self.to_s).append(" Loading: ").to_s
        index = 0
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        touchButtonBlankResource = TouchButtonBlankResource.getInstance()
        touchButtonGenericActionResource = TouchButtonGenericActionResource.getInstance()
        touchButtonStartResource = TouchButtonStartResource.getInstance()
        touchButtonUpResource = TouchButtonUpResource.getInstance()
        touchButtonDownResource = TouchButtonDownResource.getInstance()
        touchButtonTurnLeftResource = TouchButtonTurnLeftResource.getInstance()
        touchButtonTurnRightResource = TouchButtonTurnRightResource.getInstance()
        touchButtonStrafeLeftResource = TouchButtonStrafeLeftResource.getInstance()
        touchButtonStrafeRightResource = TouchButtonStrafeRightResource.getInstance()
        touchButtonBlankResourceImage = imageCache.getWithKey(touchButtonBlankResource.RESOURCE)
        touchButtonGenericActionResourceImage = imageCache.getWithKey(touchButtonGenericActionResource.RESOURCE)
        touchButtonStartResourceImage = imageCache.getWithKey(touchButtonStartResource.RESOURCE)
        touchButtonUpResourceImage = imageCache.getWithKey(touchButtonUpResource.RESOURCE)
        touchButtonDownResourceImage = imageCache.getWithKey(touchButtonDownResource.RESOURCE)
        touchButtonTurnLeftResourceImage = imageCache.getWithKey(touchButtonTurnLeftResource.RESOURCE)
        touchButtonTurnRightResourceImage = imageCache.getWithKey(touchButtonTurnRightResource.RESOURCE)
        touchButtonStrafeLeftResourceImage = imageCache.getWithKey(touchButtonStrafeLeftResource.RESOURCE)
        touchButtonStrafeRightResourceImage = imageCache.getWithKey(touchButtonStrafeRightResource.RESOURCE)
        nullAnimationFactory = NullAnimationFactory.getFactoryInstance()
        if OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
            imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
        end
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil = ImageCompleteUtil.getInstance()
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE)
        self.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonBlankResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE)
        self.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonGenericActionResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE)
        self.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()))
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE)
        self.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonUpResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE)
        self.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonDownResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE)
        self.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE)
        self.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnRightResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE)
        self.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE)
        self.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory)
        if OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
            touchButtonStartHintResource = imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
            self.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()))
        else
            self.add(touchButtonStartResource.HINT, nullAnimationFactory)
        end
        self.class.superclass.instance_method(:init).bind(self).call(level)
    end
    

    def isLoadingLevel(level)
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()
            return true
        else
            return super(level)
        end
    end
    

    def isFeature()
        if !Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            return true
        else
            return false
        end
    end
end

require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/image/ImageCache"
require "org/allbinary/image/ImageCacheFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/media/image/ImageCompleteUtil"
require "org/allbinary/input/motion/button/TouchButtonBlankResource"
require "org/allbinary/input/motion/button/TouchButtonDownResource"
require "org/allbinary/input/motion/button/TouchButtonGenericActionResource"
require "org/allbinary/input/motion/button/TouchButtonResource"
require "org/allbinary/input/motion/button/TouchButtonStartResource"
require "org/allbinary/input/motion/button/TouchButtonStrafeLeftResource"
require "org/allbinary/input/motion/button/TouchButtonStrafeRightResource"
require "org/allbinary/input/motion/button/TouchButtonTurnLeftResource"
require "org/allbinary/input/motion/button/TouchButtonTurnRightResource"
require "org/allbinary/input/motion/button/TouchButtonUpResource"


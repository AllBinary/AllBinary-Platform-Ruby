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

require "java/lang/JavaOverload"
require "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory < ::Org::Allbinary::Animation::Resource::BaseResourceAnimationInterfaceFactoryInterfaceFactory
    

    def self.createFactory()
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.new("TouchButton Animations")
    end
    

    def initialize(name)
        super(name, ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable(), ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable(), ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable())
    end
    

    # throws Exception
    def init(level)
        self.initImageCache(::Org::Allbinary::Image::ImageCacheFactory.getInstance(), level)
    end
    java_overload :init, 1
    

    # throws Exception
    def initImageCache(imageCache, level)
        if self.isInitialized()
            return
        end
        portion = 140
        loadingString = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(self.to_s).append(" Loading: ").to_s
        index = 0
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
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
        nullAnimationFactory = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance()
        if ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
            imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
        end
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil = ::Org::Allbinary::Media::Image::ImageCompleteUtil.getInstance()
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE)
        self.add(touchButtonBlankResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonBlankResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE)
        self.add(touchButtonGenericActionResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonGenericActionResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE)
        self.add(touchButtonStartResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE)
        self.add(touchButtonUpResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonUpResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE)
        self.add(touchButtonDownResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonDownResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE)
        self.add(touchButtonTurnLeftResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE)
        self.add(touchButtonTurnRightResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnRightResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE)
        self.add(touchButtonStrafeLeftResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, ((index += 1) - 1))
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE)
        self.add(touchButtonStrafeRightResource.RESOURCE, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory)
        if ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
            touchButtonStartHintResource = imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
            self.add(touchButtonStartResource.HINT, ::Org::Allbinary::Animation::Image::Sprite::OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()))
        else
            self.add(touchButtonStartResource.HINT, nullAnimationFactory)
        end
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.superclass.java_super_method(:init, 1).bind(self).call(level)
    end
    java_overload :initImageCache, 2
    

    def isLoadingLevel(level)
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()
            return true
        else
            return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.superclass.java_super_method(:isLoadingLevel, 1).bind(self).call(level)
        end
    end
    java_overload :isLoadingLevel, 1
    

    def isFeature()
        if !::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            return true
        else
            return false
        end
    end
    java_overload :isFeature, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; module Image; module Sprite; autoload :OneRowSpriteIndexedAnimationFactory, "org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory" unless const_defined?(:OneRowSpriteIndexedAnimationFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageCompleteUtil, "org/allbinary/media/image/ImageCompleteUtil" unless const_defined?(:ImageCompleteUtil, false); end; end; end; end
autoload :TouchButtonBlankResource, "org/allbinary/input/motion/button/TouchButtonBlankResource" unless const_defined?(:TouchButtonBlankResource, false)
autoload :TouchButtonDownResource, "org/allbinary/input/motion/button/TouchButtonDownResource" unless const_defined?(:TouchButtonDownResource, false)
autoload :TouchButtonGenericActionResource, "org/allbinary/input/motion/button/TouchButtonGenericActionResource" unless const_defined?(:TouchButtonGenericActionResource, false)
autoload :TouchButtonResource, "org/allbinary/input/motion/button/TouchButtonResource" unless const_defined?(:TouchButtonResource, false)
autoload :TouchButtonStartResource, "org/allbinary/input/motion/button/TouchButtonStartResource" unless const_defined?(:TouchButtonStartResource, false)
autoload :TouchButtonStrafeLeftResource, "org/allbinary/input/motion/button/TouchButtonStrafeLeftResource" unless const_defined?(:TouchButtonStrafeLeftResource, false)
autoload :TouchButtonStrafeRightResource, "org/allbinary/input/motion/button/TouchButtonStrafeRightResource" unless const_defined?(:TouchButtonStrafeRightResource, false)
autoload :TouchButtonTurnLeftResource, "org/allbinary/input/motion/button/TouchButtonTurnLeftResource" unless const_defined?(:TouchButtonTurnLeftResource, false)
autoload :TouchButtonTurnRightResource, "org/allbinary/input/motion/button/TouchButtonTurnRightResource" unless const_defined?(:TouchButtonTurnRightResource, false)
autoload :TouchButtonUpResource, "org/allbinary/input/motion/button/TouchButtonUpResource" unless const_defined?(:TouchButtonUpResource, false)

end; end; end; end; end


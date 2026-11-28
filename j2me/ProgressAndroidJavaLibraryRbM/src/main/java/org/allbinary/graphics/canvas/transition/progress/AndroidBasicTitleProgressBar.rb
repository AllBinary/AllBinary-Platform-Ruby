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
# package org.allbinary.graphics.canvas.transition.progress

require "java/lang/JavaOverload"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class AndroidBasicTitleProgressBar < ProgressCanvas
    include ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventListener
    attr_accessor :showTitleProgressBarRunnable, :dismissTitleProgressBarRunnable, :titleProgressDialogPortionSetProgressRunnable, :titleProgressDialogSetProgressRunnable, :midletActivity, :portion, :IMAGE, :image, :animation

    def jfields_org_allbinary_graphics_canvas_transition_progress_AndroidBasicTitleProgressBar
        @showTitleProgressBarRunnable = ::Org::Allbinary::ThreadPackage::NullRunnable.getInstance()
        @dismissTitleProgressBarRunnable = ::Org::Allbinary::ThreadPackage::NullRunnable.getInstance()
        @titleProgressDialogPortionSetProgressRunnable = ::Org::Allbinary::ThreadPackage::NullRunnable.getInstance()
        @titleProgressDialogSetProgressRunnable = ::Org::Allbinary::ThreadPackage::NullRunnable.getInstance()
        @midletActivity = ::Org::Allbinary::AndroidUtil::NULL_ACTIVITY
        @portion = 0
        @IMAGE = Array.new(4, nil)
        @image = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(title, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_canvas_transition_progress_AndroidBasicTitleProgressBar
        self.init()
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().addListenerInterface(self)
        size = @IMAGE.length
        (0...size).each do |index|
            @IMAGE[index] = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        end
    end
    

    def init()
        begin
            if @@background != 0
                ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().addResource(AndroidBasicTitleProgressBar::RESOURCE, @@background)
                ::Org::Allbinary::Image::GameFeatureImageCacheFactory.init()
                @image = ::Org::Allbinary::Image::ImageCacheFactory.getInstance().getWithKey(AndroidBasicTitleProgressBar::RESOURCE)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    java_overload :init, 0
    

    def initActivity(activity)
        begin
            if @midletActivity != activity
                @midletActivity = activity
                @showTitleProgressBarRunnable = ShowTitleProgressBarRunnable.new(@midletActivity, self)
                @dismissTitleProgressBarRunnable = DismissTitleProgressBarRunnable.new(@midletActivity, self)
                @titleProgressDialogSetProgressRunnable = TitleProgressBarSetProgressRunnable.new(@midletActivity, self)
                @titleProgressDialogPortionSetProgressRunnable = TitleProgressBarPortionSetProgressRunnable.new(@midletActivity, self)
                self.loadProgressImages()
            end
            self.updateCurrent()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    java_overload :initActivity, 1
    

    def updateCurrent()
        begin
            if !self.isBackground()
                @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
            elsif @@background != 0
                displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
                currentImage = nil
                if displayInfo.isPortrait()
                    currentImage = self.getImage(0)
                else
                    currentImage = self.getImage(2)
                end
                if currentImage == nil
                    @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
                else
                    @animation = ::Org::Allbinary::Animation::Image::ImageAnimation.new(currentImage, ::Org::Allbinary::Animation::AnimationBehavior.getInstance())
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
    end
    java_overload :updateCurrent, 0
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            self.loadProgressImages()
            self.updateCurrent()
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION_LABEL + ::Org::Allbinary::Logic::Java::ExceptionPackage::ExceptionUtil.getInstance().getStackTrace(e), self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT)
            @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        end
    end
    java_overload :onDisplayChangeEvent, 1
    

    def loadProgressImages()
        begin
            displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
            lastWidth = displayInfo.getLastWidth()
            lastHeight = displayInfo.getLastHeight()
            if displayInfo.isPortraitWH(lastWidth, lastHeight)
                self.setImages(0, lastWidth, lastHeight)
            else
                self.setImages(2, lastWidth, lastHeight)
            end
        rescue ArgumentError => e
            @logUtil.putF("IllegalArgumentException " + (::Org::Allbinary::Logic::Java::ExceptionPackage::ExceptionUtil.getInstance().getStackTrace(e)).to_s, self, "loadProgressImages")
            @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION_LABEL + ::Org::Allbinary::Logic::Java::ExceptionPackage::ExceptionUtil.getInstance().getStackTrace(e), self, "loadProgressImages")
            @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        end
    end
    java_overload :loadProgressImages, 0
    

    def isInitialized()
        if @midletActivity != ::Org::Allbinary::AndroidUtil::NULL_ACTIVITY
            return true
        else
            return false
        end
    end
    java_overload :isInitialized, 0
    

    def start()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.START_METHOD_NAME)
            AndroidBasicTitleProgressBar.superclass.java_super_method(:start, 0).bind(self).call()
            @midletActivity.runOnUiThread(@showTitleProgressBarRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
    end
    java_overload :start, 0
    

    def end_()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
            @midletActivity.runOnUiThread(@dismissTitleProgressBarRunnable)
            AndroidBasicTitleProgressBar.superclass.java_super_method(:end_, 0).bind(self).call()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.END_METHOD_NAME, e)
        end
    end
    java_overload :end_, 0
    

    def addEarlyPortion(value, text, index)
        begin
            @portion = value
            AndroidBasicTitleProgressBar.superclass.java_super_method(:addEarlyPortion, 3).bind(self).call(value, text, index)
            if @midletActivity != ::Org::Allbinary::AndroidUtil::NULL_ACTIVITY
                @midletActivity.runOnUiThread(@titleProgressDialogPortionSetProgressRunnable)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    java_overload :addEarlyPortion, 3
    

    def addPortion(value, text, index)
        begin
            @portion = value
            AndroidBasicTitleProgressBar.superclass.java_super_method(:addPortion, 3).bind(self).call(value, text, index)
            @midletActivity.runOnUiThread(@titleProgressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    java_overload :addPortion, 3
    

    def addNormalPortion(value, text)
        begin
            @portion = value
            AndroidBasicTitleProgressBar.superclass.java_super_method(:addNormalPortion, 2).bind(self).call(value, text)
            @midletActivity.runOnUiThread(@titleProgressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    java_overload :addNormalPortion, 2
    

    def setValue(value)
        begin
            AndroidBasicTitleProgressBar.superclass.java_super_method(:setValue, 1).bind(self).call(value)
            @midletActivity.runOnUiThread(@titleProgressDialogSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setValue", e)
        end
    end
    java_overload :setValue, 1
    

    def waitUntilDisplayed()
    end
    java_overload :waitUntilDisplayed, 0
    

    # throws Exception
    def setImages(index, lastWidth, lastHeight)
        image = @image
        if image != ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
            if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().FULL_SCREEN)
                if @IMAGE[index] == ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
                    @IMAGE[index] = ::Org::Allbinary::Media::Image::ImageScaleUtil.getInstance().createImage2(::Org::Allbinary::Image::ImageCacheFactory.getInstance(), image, (lastWidth).to_f, (image.getWidth()).to_f, (lastHeight).to_f - 20.0, (image.getHeight()).to_f, false)
                end
            else
                nextIndex = index + 1
                if @IMAGE[nextIndex] == ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
                    @IMAGE[nextIndex] = ::Org::Allbinary::Media::Image::ImageScaleUtil.getInstance().createImage2(::Org::Allbinary::Image::ImageCacheFactory.getInstance(), image, (lastWidth).to_f, (image.getWidth()).to_f, (lastHeight).to_f - 28.0, (image.getHeight()).to_f, false)
                end
            end
        end
    end
    java_overload :setImages, 3
    

    # throws Exception
    def initOpenGL(graphics)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        @image = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance().getWithKey(AndroidBasicTitleProgressBar::RESOURCE)
        preResourceImageUtil = ::Org::Allbinary::Image::PreResourceImageUtil.getInstance()
        size = @IMAGE.length
        (0...size).each do |index|
            if @IMAGE[index] != ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
                @IMAGE[index] = preResourceImageUtil.encapsulate(@IMAGE[index])
            end
        end
        self.updateCurrent()
    end
    java_overload :initOpenGL, 1
    

    # throws Exception
    def update(graphics)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.UPDATE)
        self.initOpenGL(graphics)
        @image = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance().getWithKey(AndroidBasicTitleProgressBar::RESOURCE)
        preResourceImageUtil = ::Org::Allbinary::Image::PreResourceImageUtil.getInstance()
        size = @IMAGE.length
        (0...size).each do |index|
            if @IMAGE[index] != ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
                preResourceImageUtil.update(graphics, @IMAGE[index])
            end
        end
    end
    java_overload :update, 1
    

    # throws Exception
    def getImage(index)
        image = ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().FULL_SCREEN)
            image = @IMAGE[index]
        else
            image = @IMAGE[index + 1]
        end
        return image
    end
    java_overload :getImage, 1
    

    def paint2(graphics)
        begin
            @animation.paintXY(graphics, 0, 20)
            AndroidBasicTitleProgressBar.superclass.java_super_method(:paint2, 1).bind(self).call(graphics)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.PAINT, e)
        end
    end
    java_overload :paint2, 1
    

    def self.setBackgroundResource(background)
        @@background = background
    end
    

    def setBackground(background)
        AndroidBasicTitleProgressBar.superclass.java_super_method(:setBackground, 1).bind(self).call(background)
        self.updateCurrent()
    end
    java_overload :setBackground, 1
    

    def setPortion(portion)
        @portion = portion
    end
    java_overload :setPortion, 1
    

    def getPortion()
        return @portion
    end
    java_overload :getPortion, 0

    def self.background()
        AndroidBasicTitleProgressBar.java_static_fields unless @java_static_fields_started
        return defined?(@@background) ? @@background : nil
    end

    def self.background=(value)
        AndroidBasicTitleProgressBar.java_static_fields unless @java_static_fields_started
        @@background = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:RESOURCE, "ProgressImage")
        begin
            @@background = 0
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidBasicTitleProgressBar"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:RESOURCE].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :PreResourceImageUtil, "org/allbinary/image/PreResourceImageUtil" unless const_defined?(:PreResourceImageUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module ExceptionPackage; autoload :ExceptionUtil, "org/allbinary/logic/java/exception/ExceptionUtil" unless const_defined?(:ExceptionUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" unless const_defined?(:DisplayChangeEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageScaleUtil, "org/allbinary/media/image/ImageScaleUtil" unless const_defined?(:ImageScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; module Image; autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation" unless const_defined?(:ImageAnimation, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ARunnable, "org/allbinary/thread/ARunnable" unless const_defined?(:ARunnable, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :NullRunnable, "org/allbinary/thread/NullRunnable" unless const_defined?(:NullRunnable, false); end; end; end
autoload :DismissTitleProgressBarRunnable, "org/allbinary/graphics/canvas/transition/progress/DismissTitleProgressBarRunnable" unless const_defined?(:DismissTitleProgressBarRunnable, false)
autoload :ShowTitleProgressBarRunnable, "org/allbinary/graphics/canvas/transition/progress/ShowTitleProgressBarRunnable" unless const_defined?(:ShowTitleProgressBarRunnable, false)
autoload :TitleProgressBarPortionSetProgressRunnable, "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarPortionSetProgressRunnable" unless const_defined?(:TitleProgressBarPortionSetProgressRunnable, false)
autoload :TitleProgressBarSetProgressRunnable, "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarSetProgressRunnable" unless const_defined?(:TitleProgressBarSetProgressRunnable, false)

begin
    AndroidBasicTitleProgressBar.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end


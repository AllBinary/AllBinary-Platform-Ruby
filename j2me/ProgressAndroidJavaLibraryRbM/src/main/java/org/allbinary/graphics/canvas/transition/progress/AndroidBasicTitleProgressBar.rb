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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

class AndroidBasicTitleProgressBar < ProgressCanvas
    include DisplayChangeEventListener
    attr_accessor :showTitleProgressBarRunnable, :dismissTitleProgressBarRunnable, :titleProgressDialogPortionSetProgressRunnable, :titleProgressDialogSetProgressRunnable, :midletActivity, :portion, :IMAGE, :image, :animation

    def initialize_fields
        @showTitleProgressBarRunnable = NullRunnable.getInstance()
        @dismissTitleProgressBarRunnable = NullRunnable.getInstance()
        @titleProgressDialogPortionSetProgressRunnable = NullRunnable.getInstance()
        @titleProgressDialogSetProgressRunnable = NullRunnable.getInstance()
        @midletActivity = AndroidUtil::NULL_ACTIVITY
        @portion = 0
        @IMAGE = Array.new(4, nil)
        @image = NullImage::NULL_IMAGE
        @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(title, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        self.init()
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
        size = @IMAGE.length
        (0...size).each do |index|
            @IMAGE[index] = NullImage::NULL_IMAGE
        end
    end
    

    def init()
        begin
            if AndroidBasicTitleProgressBar.background != 0
                ResourceUtil.getInstance().addResource(AndroidBasicTitleProgressBar::RESOURCE, AndroidBasicTitleProgressBar.background)
                GameFeatureImageCacheFactory.init()
                @image = ImageCacheFactory.getInstance().getWithKey(AndroidBasicTitleProgressBar::RESOURCE)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    

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
    

    def updateCurrent()
        begin
            if !self.isBackground()
                @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
            elsif AndroidBasicTitleProgressBar.background != 0
                displayInfo = DisplayInfoSingleton.getInstance()
                currentImage = nil
                if displayInfo.isPortrait()
                    currentImage = self.getImage(0)
                else
                    currentImage = self.getImage(2)
                end
                if currentImage == nil
                    @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
                else
                    @animation = ImageAnimation.new(currentImage, AnimationBehavior.getInstance())
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            self.loadProgressImages()
            self.updateCurrent()
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION_LABEL + ExceptionUtil.getInstance().getStackTrace(e), self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT)
            @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        end
    end
    

    def loadProgressImages()
        begin
            displayInfo = DisplayInfoSingleton.getInstance()
            lastWidth = displayInfo.getLastWidth()
            lastHeight = displayInfo.getLastHeight()
            if displayInfo.isPortraitWH(lastWidth, lastHeight)
                self.setImages(0, lastWidth, lastHeight)
            else
                self.setImages(2, lastWidth, lastHeight)
            end
        rescue ArgumentError => e
            @logUtil.putF("IllegalArgumentException " + (ExceptionUtil.getInstance().getStackTrace(e)).to_s, self, "loadProgressImages")
            @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION_LABEL + ExceptionUtil.getInstance().getStackTrace(e), self, "loadProgressImages")
            @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        end
    end
    

    def isInitialized()
        if @midletActivity != AndroidUtil::NULL_ACTIVITY
            return true
        else
            return false
        end
    end
    

    def start()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.START_METHOD_NAME)
            super()
            @midletActivity.runOnUiThread(@showTitleProgressBarRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.START_METHOD_NAME, e)
        end
    end
    

    def end_()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
            @midletActivity.runOnUiThread(@dismissTitleProgressBarRunnable)
            super()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.END_METHOD_NAME, e)
        end
    end
    

    def addEarlyPortion(value, text, index)
        begin
            @portion = value
            super(value, text, index)
            if @midletActivity != AndroidUtil::NULL_ACTIVITY
                @midletActivity.runOnUiThread(@titleProgressDialogPortionSetProgressRunnable)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    

    def addPortion(value, text, index)
        begin
            @portion = value
            super(value, text, index)
            @midletActivity.runOnUiThread(@titleProgressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    

    def addNormalPortion(value, text)
        begin
            @portion = value
            super(value, text)
            @midletActivity.runOnUiThread(@titleProgressDialogPortionSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @ADD_PORTION, e)
        end
    end
    

    def setValue(value)
        begin
            super(value)
            @midletActivity.runOnUiThread(@titleProgressDialogSetProgressRunnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setValue", e)
        end
    end
    

    def waitUntilDisplayed()
    end
    

    # throws Exception
    def setImages(index, lastWidth, lastHeight)
        image = @image
        if image != NullImage::NULL_IMAGE
            if Features.getInstance().isFeature(MainFeatureFactory.getInstance().FULL_SCREEN)
                if @IMAGE[index] == NullImage::NULL_IMAGE
                    @IMAGE[index] = ImageScaleUtil.getInstance().createImage2(ImageCacheFactory.getInstance(), image, (lastWidth).to_f, (image.getWidth()).to_f, (lastHeight).to_f - 20.0, (image.getHeight()).to_f, false)
                end
            else
                nextIndex = index + 1
                if @IMAGE[nextIndex] == NullImage::NULL_IMAGE
                    @IMAGE[nextIndex] = ImageScaleUtil.getInstance().createImage2(ImageCacheFactory.getInstance(), image, (lastWidth).to_f, (image.getWidth()).to_f, (lastHeight).to_f - 28.0, (image.getHeight()).to_f, false)
                end
            end
        end
    end
    

    # throws Exception
    def initOpenGL(graphics)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        @image = GameFeatureImageCacheFactory.getInstance().getWithKey(AndroidBasicTitleProgressBar::RESOURCE)
        preResourceImageUtil = PreResourceImageUtil.getInstance()
        size = @IMAGE.length
        (0...size).each do |index|
            if @IMAGE[index] != NullImage::NULL_IMAGE
                @IMAGE[index] = preResourceImageUtil.encapsulate(@IMAGE[index])
            end
        end
        self.updateCurrent()
    end
    

    # throws Exception
    def update(graphics)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.UPDATE)
        self.initOpenGL(graphics)
        @image = GameFeatureImageCacheFactory.getInstance().getWithKey(AndroidBasicTitleProgressBar::RESOURCE)
        preResourceImageUtil = PreResourceImageUtil.getInstance()
        size = @IMAGE.length
        (0...size).each do |index|
            if @IMAGE[index] != NullImage::NULL_IMAGE
                preResourceImageUtil.update(graphics, @IMAGE[index])
            end
        end
    end
    

    # throws Exception
    def getImage(index)
        image = NullImage::NULL_IMAGE
        if Features.getInstance().isFeature(MainFeatureFactory.getInstance().FULL_SCREEN)
            image = @IMAGE[index]
        else
            image = @IMAGE[index + 1]
        end
        return image
    end
    

    def paint2(graphics)
        begin
            @animation.paintXY(graphics, 0, 20)
            super(graphics)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.PAINT, e)
        end
    end
    

    def self.setBackgroundResource(background)
        AndroidBasicTitleProgressBar.background = background
    end
    

    def setBackground(background)
        super(background)
        self.updateCurrent()
    end
    

    def setPortion(portion)
        @portion = portion
    end
    

    def getPortion()
        return @portion
    end

    def self.background()
        return defined?(@@background) ? @@background : nil
    end

    def self.background=(value)
        @@background = value
    end
end

require "android/app/Activity"
require "org/allbinary/AndroidUtil"
require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/image/PreResourceImageUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/java/exception/ExceptionUtil"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
require "org/allbinary/image/ImageCacheFactory"
require "org/allbinary/media/image/ImageScaleUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/image/ImageAnimation"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/thread/ARunnable"
require "org/allbinary/thread/NullRunnable"
require "org/allbinary/graphics/canvas/transition/progress/DismissTitleProgressBarRunnable"
require "org/allbinary/graphics/canvas/transition/progress/ShowTitleProgressBarRunnable"
require "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarPortionSetProgressRunnable"
require "org/allbinary/graphics/canvas/transition/progress/TitleProgressBarSetProgressRunnable"

class AndroidBasicTitleProgressBar
    RESOURCE = "ProgressImage"
    @@background = 0
end


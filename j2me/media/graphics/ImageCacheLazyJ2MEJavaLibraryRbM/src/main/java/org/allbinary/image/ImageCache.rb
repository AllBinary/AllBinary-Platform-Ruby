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
# package org.allbinary.image

require "java/lang/Object"
# require "java/io/InputStream"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/canvas/Processor"
require "org/allbinary/image/ImageCacheBase"

class ImageCache < ImageCacheBase
    attr_accessor :tsUtil, :concurrentImageLoadingProcessor, :commonStrings, :commonSeps, :resourceUtil, :gameGlobalsFactory, :gdResources, :loadNowList, :loadSoonList, :loadList, :loadAfterList, :lock, :firstTime, :totalLoaded, :progressEnded, :hasAnyLazyAnimationFactories, :processor, :endProcessor, :LOAD_IMAGE_FOR_ANIMATION
    class NotHTMLProcessor < Processor
        

        def process()
            @concurrentImageLoadingProcessor.runTask()
        end
    end
    class NotHTMLEndProcessor < Processor
        

        def process()
            progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.endIfPaintedSinceStart()
        end
    end
    class HTMLEndProcessor < Processor
        

        def process()
            size = @gdResources.currentLayoutRequiredTotal
            if size == 0
                progressCanvas = ProgressCanvasFactory.getInstance()
                progressCanvas.endIfPaintedSinceStart()
            elsif @totalLoaded > size / 12
                progressCanvas = ProgressCanvasFactory.getInstance()
                progressCanvas.endIfPaintedSinceStart()
                @endProcessor = NotHTMLEndProcessor.new()
            end
        end
    end
    class FirstProcessor < Processor
        

        def process()
            self.firstProcess()
        end
    end

    def initialize_fields
        @tsUtil = TsUtil.getInstance()
        @concurrentImageLoadingProcessor = ConcurrentImageLoadingProcessor.new(self)
        @commonStrings = CommonStrings.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @resourceUtil = ResourceUtil.getInstance()
        @gameGlobalsFactory = GameGlobalsFactory.getInstance()
        @gdResources = GDResources.getInstance()
        @loadNowList = BasicArrayListD.new()
        @loadSoonList = BasicArrayListD.new()
        @loadList = BasicArrayListD.new()
        @loadAfterList = BasicArrayListD.new()
        @lock = SynchObject.new()
        @firstTime = true
        @totalLoaded = 0
        @progressEnded = false
        @hasAnyLazyAnimationFactories = false
        @processor = FirstProcessor.new()
        @endProcessor = Processor.getInstance()
        @LOAD_IMAGE_FOR_ANIMATION = "Load Image Animation"
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def firstProcess()
        logUtil = LogUtil.getInstance()
        isHTML = J2MEUtil.isHTML()
        if isHTML
            @processor = Processor.getInstance()
            @endProcessor = HTMLEndProcessor.new()
        else
            @processor = NotHTMLProcessor.new()
            @endProcessor = NotHTMLEndProcessor.new()
            begin
                self.runTask()
            rescue StandardError => e
                logUtil.putF(@commonStrings.EXCEPTION, self, @commonStrings.END_METHOD_NAME)
            end
        end
    end
    

    def addListener(renderer)
    end
    

    # throws Exception
    def waitForLoadNow()
        if @firstTime
            abToGBUtil = ABToGBUtil.getInstance()
            abCanvas = abToGBUtil.abCanvas
            while @loadNowList.isEmpty() && (!abCanvas.isInitialized() || (abCanvas.isInitialized() && @hasAnyLazyAnimationFactories)) && !@progressEnded
                sleep((120) / 1000.0)
            end
            @firstTime = false
        end
    end
    

    # throws Exception
    def loadImageForAnimation()
        lazyImageRotationAnimation = nil
        (@lock).java_monitor.synchronize do
            if @loadNowList.isEmpty()
                @endProcessor.process()
                if @loadSoonList.isEmpty()
                    if @loadAfterList.isEmpty()
                        if @firstTime
                        elsif @gameGlobalsFactory.newCanvas
                        else
                            self.loadNextImage()
                        end
                        return
                    else
                        lazyImageRotationAnimation = @loadAfterList.get(0)
                        if self.loadImageForLazyAnimation(lazyImageRotationAnimation)
                            @loadAfterList.remove(lazyImageRotationAnimation)
                        end
                    end
                else
                    lazyImageRotationAnimation = @loadSoonList.get(0)
                    if self.loadImageForLazyAnimation(lazyImageRotationAnimation)
                        @loadSoonList.remove(lazyImageRotationAnimation)
                    end
                end
                return
            end
            lazyImageRotationAnimation = @loadNowList.get(0)
        end
        if self.loadImageForLazyAnimation(lazyImageRotationAnimation)
            (@lock).java_monitor.synchronize do
                @loadNowList.remove(lazyImageRotationAnimation)
            end
            if lazyImageRotationAnimation.layoutIndex != 0
                list = self.getAssociated(lazyImageRotationAnimation)
                (@lock).java_monitor.synchronize do
                    size = list.size()
                    if size > 0
                        @loadSoonList.addAllList(list)
                    end
                end
            end
            progressCanvas = ProgressCanvasFactory.getInstance()
            isHTML = J2MEUtil.isHTML()
            if @loadNowList.isEmpty() && (!isHTML || @firstTime)
                progressCanvas.endFromInitialLazyLoadingComplete()
            else
                if @totalLoaded % 10 == 0
                    progressCanvas.addNormalPortion(1, @LOAD_IMAGE_FOR_ANIMATION)
                end
            end
        end
    end
    

    # throws Exception
    def loadImages()
        while !@loadList.isEmpty() || !@loadNowList.isEmpty()
            self.loadImageForAnimations()
            self.loadNextImage()
        end
    end
    

    # throws Exception
    def loadImageForAnimations()
        while !@loadNowList.isEmpty()
            self.loadImageForAnimation()
        end
    end
    

    # throws Exception
    def loadRemainingAnimations()
        while !@loadAfterList.isEmpty() || !@loadNowList.isEmpty()
            while !@loadNowList.isEmpty()
                self.loadImageForAnimation()
            end
            lazyImageRotationAnimation = nil
            (@lock).java_monitor.synchronize do
                if !@loadAfterList.isEmpty()
                    lazyImageRotationAnimation = @loadAfterList.removeAt(0)
                end
            end
            if lazyImageRotationAnimation != nil
                self.loadImageForLazyAnimation(lazyImageRotationAnimation)
            end
        end
    end
    

    # throws Exception
    def loadImageForLazyAnimation(lazyImageRotationAnimation)
        image = lazyImageRotationAnimation.animationInterfaceFactoryInterface.getImage()
        if self.loadImage(image)
            lazyImageRotationAnimation.setRealAnimation()
            return true
        end
        return false
    end
    

    # throws Exception
    def loadNextImage()
        image = nil
        (@lock).java_monitor.synchronize do
            if @loadList.size() == 0
                return
            end
            image = @loadList.removeAt(0)
        end
        self.loadImage(image)
    end
    

    # throws Exception
    def loadImage(image)
        if image.isReady()
            return true
        else
            if image.getImage() != nil
                if image.setReady()
                    if image.isReady()
                        @totalLoaded += 1
                        return true
                    end
                end
            else
                key = image.getName()
                image2 = self.creatImage(key)
                if image2.isReady()
                    self.init(image, image2)
                    return true
                else
                    image.setImage(image2.getImage())
                end
            end
        end
        return false
    end
    

    # throws Exception
    def init(image, image2)
        image.init(image2.getImage())
    end
    

    # throws Exception
    def creatImage(key)
        inputStream = @resourceUtil.getResourceAsStream(key)
        image = ImageFactory.getInstance().createImageFromInputStream(inputStream)
        image.setName(key)
        return image
    end
    

    # throws Exception
    def get(caller, width, height)
        foundIndex = self.getIndexWH(width, height)
        image = self.getFromAvailable(foundIndex, width, height)
        if image == NullImage::NULL_IMAGE
            @volume += width * height
            if @volume > 32000
                @tsUtil.gc()
                @volume = 0
            end
            image = self.createImage(caller, width, height)
            if @nextIndex > @widths.length - 1
                if foundIndex == -1
                    foundIndex = @nextIndex
                    @widths[@nextIndex] = width
                    @heights[@nextIndex] = height
                    @nextIndex += 1
                end
                @listOfList[foundIndex].add(image)
            end
        end
        return image
    end
    

    # throws Exception
    def getWithKey(key)
        image = self.getImage(key)
        if image == NullImage::NULL_IMAGE
            inputStream = nil
            begin
                image = self.createImageFromInputStream(key, inputStream)
            rescue StandardError => e
                @logUtil.put("Exception: Trying Again After GC", self, @commonStrings.GET, e)
                @logUtil.putF(StringMaker.new().append("InputStream: ").append(StringUtil.getInstance().toString(inputStream)).to_s, self, @commonStrings.GET)
                @tsUtil.gc()
                @tsUtil.gc()
                @logUtil.putF(Memory.getInfo(), self, @commonStrings.GET)
                sleep((100) / 1000.0)
                image = self.createImageFromInputStream(key, inputStream)
            end
            @hashtable.put(key, image)
        end
        return image
    end
    

    def getIndex(key)
        gdResources = GDResources.getInstance()
        resourceStringArray = gdResources.resourceStringArray
        size = resourceStringArray.length
        (0...size).each do |index|
            if resourceStringArray[index] == key
                return index
            end
        end
        @logUtil.putF(StringMaker.new().append("unable to find key: ").append(StringUtil.getInstance().toString(key)).to_s, self, @commonStrings.RUN)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def createImageFromInputStream(key, inputStream)
        gdLazyResources = GDLazyResources.getInstance()
        resourceStringArray = gdLazyResources.requiredResourcesBeforeLoadingArray
        size = resourceStringArray.length
        (0...size).each do |index|
            if key == resourceStringArray[index]
                return self.creatImage(key)
            end
        end
        self.runTask()
        index = self.getIndex(key)
        width = gdLazyResources.imageResourceWidthArray[index]
        height = gdLazyResources.imageResourceHeightArray[index]
        image = self.createImageLater(key, width, height)
        (@lock).java_monitor.synchronize do
            @loadList.add(image)
        end
        return image
    end
    

    # throws Exception
    def createImageLater(key, width, height)
        return Image.createImageLater(key, width, height)
    end
    

    def getAssociated(lazyImageRotationAnimation)
        list = BasicArrayListD.new()
        (@lock).java_monitor.synchronize do
            lazyImageRotationAnimation2 = nil
            size = @loadAfterList.size()
            (0...size).each do |index|
                lazyImageRotationAnimation2 = @loadAfterList.get(index)
                if lazyImageRotationAnimation2.instanceId == lazyImageRotationAnimation.instanceId
                    list.add(lazyImageRotationAnimation2)
                end
            end
            size2 = list.size()
            (0...size2).each do |index|
                @loadAfterList.remove(list.get(index))
            end
        end
        return list
    end
    

    def add(lazyImageRotationAnimation)
        (@lock).java_monitor.synchronize do
            @loadAfterList.add(lazyImageRotationAnimation)
        end
    end
    

    # throws Exception
    def insertFirst(lazyImageRotationAnimation)
        if @loadNowList.contains(lazyImageRotationAnimation)
        else
            (@lock).java_monitor.synchronize do
                @loadNowList.add(lazyImageRotationAnimation)
                @loadAfterList.remove(lazyImageRotationAnimation)
            end
        end
        self.runTask()
    end
    

    def progressEnded()
        @progressEnded = true
    end
    

    # throws Exception
    def runTask()
        @processor.process()
    end
    

    def initProgress()
        if @firstTime
            @firstTime = false
        end
    end
    

    def isLazy()
        return true
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/TsUtil"
require "org/allbinary/animation/image/LazyImageRotationAnimation"
require "org/allbinary/canvas/GameGlobalsFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/game/canvas/ABToGBUtil"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/gd/resource/GDLazyResources"
require "org/allbinary/game/gd/resource/GDResources"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/system/Memory"
require "org/allbinary/thread/BaseImageLoadingProcessor"
require "org/allbinary/thread/ConcurrentImageLoadingProcessor"
require "org/allbinary/thread/SynchObject"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/ABSystemWrapper"
require "org/allbinary/image/ImageFactory"
require "java/lang/Thread"

class ImageCache
    NULL_IMAGE_CACHE = ImageCache.new()
end


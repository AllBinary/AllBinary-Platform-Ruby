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
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/canvas/Processor"
require "org/allbinary/image/ImageCacheBase"

module ::Org; module Allbinary; module Image

class ImageCache < ImageCacheBase
    attr_accessor :tsUtil, :concurrentImageLoadingProcessor, :commonStrings, :commonSeps, :resourceUtil, :gameGlobalsFactory, :gdResources, :loadNowList, :loadSoonList, :loadList, :loadAfterList, :lock, :firstTime, :totalLoaded, :progressEnded, :hasAnyLazyAnimationFactories, :processor, :endProcessor, :LOAD_IMAGE_FOR_ANIMATION
    class NotHTMLProcessor < ::Org::Allbinary::Canvas::Processor
        

        def process()
            @concurrentImageLoadingProcessor.runTask()
        end
        java_overload :process, 0
    end
    class NotHTMLEndProcessor < ::Org::Allbinary::Canvas::Processor
        

        def process()
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            progressCanvas.endIfPaintedSinceStart()
        end
        java_overload :process, 0
    end
    class HTMLEndProcessor < ::Org::Allbinary::Canvas::Processor
        

        def process()
            size = @gdResources.currentLayoutRequiredTotal
            if size == 0
                progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
                progressCanvas.endIfPaintedSinceStart()
            elsif @totalLoaded > size / 12
                progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
                progressCanvas.endIfPaintedSinceStart()
                @endProcessor = NotHTMLEndProcessor.new()
            end
        end
        java_overload :process, 0
    end
    class FirstProcessor < ::Org::Allbinary::Canvas::Processor
        

        def process()
            self.firstProcess()
        end
        java_overload :process, 0
    end

    def jfields_org_allbinary_image_ImageCache
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @concurrentImageLoadingProcessor = ::Org::Allbinary::ThreadPackage::ConcurrentImageLoadingProcessor.new(self)
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
        @gameGlobalsFactory = ::Org::Allbinary::Canvas::GameGlobalsFactory.getInstance()
        @gdResources = ::Org::Allbinary::Game::Gd::Resource::GDResources.getInstance()
        @loadNowList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @loadSoonList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @loadList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @loadAfterList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @lock = ::Org::Allbinary::ThreadPackage::SynchObject.new()
        @firstTime = true
        @totalLoaded = 0
        @progressEnded = false
        @hasAnyLazyAnimationFactories = false
        @processor = FirstProcessor.new()
        @endProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @LOAD_IMAGE_FOR_ANIMATION = "Load Image Animation"
    end
    

    def initialize()
        super()
        jfields_org_allbinary_image_ImageCache
    end
    

    def firstProcess()
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        isHTML = ::Org::Allbinary::J2MEUtil.isHTML()
        if isHTML
            @processor = ::Org::Allbinary::Canvas::Processor.getInstance()
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
    java_overload :firstProcess, 0
    

    def addListener(renderer)
    end
    java_overload :addListener, 1
    

    # throws Exception
    def waitForLoadNow()
        if @firstTime
            abToGBUtil = ::Org::Allbinary::Game::Canvas::ABToGBUtil.getInstance()
            abCanvas = abToGBUtil.abCanvas
            while @loadNowList.isEmpty() && (!abCanvas.isInitialized() || (abCanvas.isInitialized() && @hasAnyLazyAnimationFactories)) && !@progressEnded
                sleep((120) / 1000.0)
            end
            @firstTime = false
        end
    end
    java_overload :waitForLoadNow, 0
    

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
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            isHTML = ::Org::Allbinary::J2MEUtil.isHTML()
            if @loadNowList.isEmpty() && (!isHTML || @firstTime)
                progressCanvas.endFromInitialLazyLoadingComplete()
            else
                if @totalLoaded % 10 == 0
                    progressCanvas.addNormalPortion(1, @LOAD_IMAGE_FOR_ANIMATION)
                end
            end
        end
    end
    java_overload :loadImageForAnimation, 0
    

    # throws Exception
    def loadImages()
        while !@loadList.isEmpty() || !@loadNowList.isEmpty()
            self.loadImageForAnimations()
            self.loadNextImage()
        end
    end
    java_overload :loadImages, 0
    

    # throws Exception
    def loadImageForAnimations()
        while !@loadNowList.isEmpty()
            self.loadImageForAnimation()
        end
    end
    java_overload :loadImageForAnimations, 0
    

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
    java_overload :loadRemainingAnimations, 0
    

    # throws Exception
    def loadImageForLazyAnimation(lazyImageRotationAnimation)
        image = lazyImageRotationAnimation.animationInterfaceFactoryInterface.getImage()
        if self.loadImage(image)
            lazyImageRotationAnimation.setRealAnimation()
            return true
        end
        return false
    end
    java_overload :loadImageForLazyAnimation, 1
    

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
    java_overload :loadNextImage, 0
    

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
    java_overload :loadImage, 1
    

    # throws Exception
    def init(image, image2)
        image.init(image2.getImage())
    end
    java_overload :init, 2
    

    # throws Exception
    def creatImage(key)
        inputStream = @resourceUtil.getResourceAsStream(key)
        image = ImageFactory.getInstance().createImageFromInputStream(inputStream)
        image.setName(key)
        return image
    end
    java_overload :creatImage, 1
    

    # throws Exception
    def get(caller, width, height)
        foundIndex = self.getIndexWH(width, height)
        image = self.getFromAvailable(foundIndex, width, height)
        if image == ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
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
    java_overload :get, 3
    

    # throws Exception
    def getWithKey(key)
        image = self.getImage(key)
        if image == ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
            inputStream = nil
            begin
                image = self.createImageFromInputStream(key, inputStream)
            rescue StandardError => e
                @logUtil.put("Exception: Trying Again After GC", self, @commonStrings.GET, e)
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("InputStream: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(inputStream)).to_s, self, @commonStrings.GET)
                @tsUtil.gc()
                @tsUtil.gc()
                @logUtil.putF(::Org::Allbinary::System::Memory.getInfo(), self, @commonStrings.GET)
                sleep((100) / 1000.0)
                image = self.createImageFromInputStream(key, inputStream)
            end
            @hashtable.put(key, image)
        end
        return image
    end
    java_overload :getWithKey, 1
    

    def getIndex(key)
        gdResources = ::Org::Allbinary::Game::Gd::Resource::GDResources.getInstance()
        resourceStringArray = gdResources.resourceStringArray
        size = resourceStringArray.length
        (0...size).each do |index|
            if resourceStringArray[index] == key
                return index
            end
        end
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("unable to find key: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(key)).to_s, self, @commonStrings.RUN)
        raise RuntimeError.new()
    end
    java_overload :getIndex, 1
    

    # throws Exception
    def createImageFromInputStream(key, inputStream)
        gdLazyResources = ::Org::Allbinary::Game::Gd::Resource::GDLazyResources.getInstance()
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
    java_overload :createImageFromInputStream, 2
    

    # throws Exception
    def createImageLater(key, width, height)
        return ::Javax::Microedition::Lcdui::Image.createImageLater(key, width, height)
    end
    java_overload :createImageLater, 3
    

    def getAssociated(lazyImageRotationAnimation)
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :getAssociated, 1
    

    def add(lazyImageRotationAnimation)
        (@lock).java_monitor.synchronize do
            @loadAfterList.add(lazyImageRotationAnimation)
        end
    end
    java_overload :add, 1
    

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
    java_overload :insertFirst, 1
    

    def progressEnded()
        @progressEnded = true
    end
    java_overload :progressEnded, 0
    

    # throws Exception
    def runTask()
        @processor.process()
    end
    java_overload :runTask, 0
    

    def initProgress()
        if @firstTime
            @firstTime = false
        end
    end
    java_overload :initProgress, 0
    

    def isLazy()
        return true
    end
    java_overload :isLazy, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_IMAGE_CACHE, ImageCache.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageCache"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_IMAGE_CACHE].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Animation; module Image; autoload :LazyImageRotationAnimation, "org/allbinary/animation/image/LazyImageRotationAnimation" unless const_defined?(:LazyImageRotationAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Canvas; autoload :GameGlobalsFactory, "org/allbinary/canvas/GameGlobalsFactory" unless const_defined?(:GameGlobalsFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Canvas; autoload :ABToGBUtil, "org/allbinary/game/canvas/ABToGBUtil" unless const_defined?(:ABToGBUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Gd; module Resource; autoload :GDLazyResources, "org/allbinary/game/gd/resource/GDLazyResources" unless const_defined?(:GDLazyResources, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Gd; module Resource; autoload :GDResources, "org/allbinary/game/gd/resource/GDResources" unless const_defined?(:GDResources, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module System; autoload :Memory, "org/allbinary/system/Memory" unless const_defined?(:Memory, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :BaseImageLoadingProcessor, "org/allbinary/thread/BaseImageLoadingProcessor" unless const_defined?(:BaseImageLoadingProcessor, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ConcurrentImageLoadingProcessor, "org/allbinary/thread/ConcurrentImageLoadingProcessor" unless const_defined?(:ConcurrentImageLoadingProcessor, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :SynchObject, "org/allbinary/thread/SynchObject" unless const_defined?(:SynchObject, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
autoload :ImageFactory, "org/allbinary/image/ImageFactory" unless const_defined?(:ImageFactory, false)
require "java/lang/Thread"

begin
    ImageCache.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


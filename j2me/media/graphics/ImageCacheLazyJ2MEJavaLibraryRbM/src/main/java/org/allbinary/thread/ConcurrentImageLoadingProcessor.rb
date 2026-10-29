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
# package org.allbinary.thread

require "org/allbinary/thread/ABRunnable"
require "org/allbinary/thread/BaseImageLoadingProcessor"

class ConcurrentImageLoadingProcessor < BaseImageLoadingProcessor
    attr_accessor :logUtil, :runnable
    class ImageCacheRunnable < ABRunnable
        attr_accessor :imageCache

        def initialize_fields
            @imageCache = nil
        end
        

        def initialize(imageCache)
            super()
            initialize_fields
            @imageCache = imageCache
        end
        

        def run()
            logUtil = LogUtil.getInstance()
            begin
                self.setRunning(true)
                @imageCache.waitForLoadNow()
                @imageCache.loadImages()
                @imageCache.loadRemainingAnimations()
                self.setRunning(false)
                progressCanvas = ProgressCanvasFactory.getInstance()
                if !progressCanvas.inProgress
                    progressCanvas.endFromInitialLazyLoadingComplete()
                end
            rescue StandardError => e
                self.setRunning(false)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
    end

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @runnable = nil
    end
    

    def initialize(imageCache)
        super()
        initialize_fields
        @runnable = ImageCacheRunnable.new(imageCache)
    end
    

    def runTask()
        if !@runnable.isRunning()
            ImageThreadPool.getInstance().runTask(@runnable)
        end
    end
end

require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/image/ImageCache"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/ImageThreadPool"


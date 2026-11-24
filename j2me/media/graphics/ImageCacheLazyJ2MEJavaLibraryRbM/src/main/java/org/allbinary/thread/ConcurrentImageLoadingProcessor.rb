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

require "java/lang/JavaOverload"
require "org/allbinary/thread/ABRunnable"
require "org/allbinary/thread/BaseImageLoadingProcessor"

module ::Org; module Allbinary; module ThreadPackage

class ConcurrentImageLoadingProcessor < BaseImageLoadingProcessor
    attr_accessor :logUtil, :runnable
    class ImageCacheRunnable < ABRunnable
        attr_accessor :imageCache

        def jfields_org_allbinary_thread_ConcurrentImageLoadingProcessor_ImageCacheRunnable
            @imageCache = nil unless instance_variable_defined?(:@imageCache)
        end
        

        def initialize(imageCache)
            super()
            jfields_org_allbinary_thread_ConcurrentImageLoadingProcessor_ImageCacheRunnable
            @imageCache = imageCache
        end
        

        def run()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            begin
                self.setRunning(true)
                @imageCache.waitForLoadNow()
                @imageCache.loadImages()
                @imageCache.loadRemainingAnimations()
                self.setRunning(false)
                progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
                if !progressCanvas.inProgress
                    progressCanvas.endFromInitialLazyLoadingComplete()
                end
            rescue StandardError => e
                self.setRunning(false)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
        end
        java_overload :run, 0
    end

    def jfields_org_allbinary_thread_ConcurrentImageLoadingProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @runnable = nil unless instance_variable_defined?(:@runnable)
    end
    

    def initialize(imageCache)
        super()
        jfields_org_allbinary_thread_ConcurrentImageLoadingProcessor
        @runnable = ImageCacheRunnable.new(imageCache)
    end
    

    def runTask()
        if !@runnable.isRunning()
            ImageThreadPool.getInstance().runTask(@runnable)
        end
    end
    java_overload :runTask, 0
end

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ImageThreadPool, "org/allbinary/thread/ImageThreadPool" unless const_defined?(:ImageThreadPool, false)

end; end; end


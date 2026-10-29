# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles

require "java/lang/Object"
# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"

class OpenGLUtil
    attr_accessor :logUtil, :commonStrings, :renderStrings, :canvasStrings, :displayInfoSingleton, :preResourceImageUtil, :lockObject, :anyType, :list, :runnableList, :created, :surfaceCreatedAndInitialized

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @renderStrings = RendererStrings.getInstance()
        @canvasStrings = CanvasStrings.getInstance()
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @preResourceImageUtil = PreResourceImageUtil.getInstance()
        @lockObject = SynchObject.new()
        @anyType = SynchObject.new()
        @list = BasicArrayListD.new()
        @runnableList = BasicArrayListD.new()
        @created = false
        @surfaceCreatedAndInitialized = false
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return OpenGLUtil.instance
    end
    

    def onSurfaceCreated(gl)
        begin
            if !@created
                @created = true
                PreLogUtil.put((CommonLabels.getInstance().START_LABEL).to_s + OpenGLCapabilities.getInstance().to_s, self, @renderStrings.ON_SURFACE_CREATED)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @renderStrings.ON_SURFACE_CREATED, e)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def onSurfaceCreated(gl, loadTextures)
        begin
            loadTextures.load(gl)
            OpenGLLogUtil.getInstance().logError(gl)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @renderStrings.ON_SURFACE_CREATED, e)
        end
    end
    

    # throws Exception
    def onSurfaceChanged(gl, graphics)
        if !@surfaceCreatedAndInitialized
            graphics.init()
            @surfaceCreatedAndInitialized = true
        end
        graphics.update()
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.update(graphics)
        (OpenGLImageCacheFactory.getInstance()).update(gl)
        self.processRunnables()
        self.set(gl)
    end
    

    def addImage(image)
        encapsulateImage = @preResourceImageUtil.encapsulate(image)
        if encapsulateImage != image
            (@anyType).java_monitor.synchronize do
                @list.add(encapsulateImage)
            end
            return encapsulateImage
        end
        return image
    end
    

    def clear()
        (@anyType).java_monitor.synchronize do
            @list.clear()
        end
    end
    

    def addRunnable(runnable)
        (@lockObject).java_monitor.synchronize do
            if !@runnableList.contains(runnable)
                @runnableList.add(runnable)
                @displayInfoSingleton.add(@canvasStrings.SCALED_IMAGES)
            end
        end
    end
    

    def processRunnables()
        (@lockObject).java_monitor.synchronize do
            runnable = nil
            size = @runnableList.size()
            (0...size).each do |index|
                runnable = @runnableList.get(index)
                runnable.run()
            end
            @runnableList.clear()
        end
    end
    

    # throws Exception
    def set(gl)
        size = @list.size()
        image = nil
        (0...size).each do |index2|
            image = @list.get(index2)
            (image).set(gl)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/device/LoadTextures"
require "org/allbinary/device/OpenGLESGraphics"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/opengles/renderer/RendererStrings"
require "org/allbinary/image/PreResourceImageUtil"
require "org/allbinary/image/opengles/OpenGLESImage"
require "org/allbinary/image/opengles/OpenGLImageCache"
require "org/allbinary/image/opengles/OpenGLImageCacheFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/SynchObject"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/opengles/OpenGLCapabilities"
require "org/allbinary/graphics/opengles/OpenGLLogUtil"
require "java/lang/Runnable"

class OpenGLUtil
    @@instance = OpenGLUtil.new()
end


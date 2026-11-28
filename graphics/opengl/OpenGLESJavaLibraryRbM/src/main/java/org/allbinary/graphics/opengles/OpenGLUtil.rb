# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles

require "java/lang/Object"

module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLUtil
    attr_accessor :logUtil, :commonStrings, :renderStrings, :canvasStrings, :displayInfoSingleton, :preResourceImageUtil, :lockObject, :anyType, :list, :runnableList, :created, :surfaceCreatedAndInitialized

    def jfields_org_allbinary_graphics_opengles_OpenGLUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @renderStrings = ::Org::Allbinary::Graphics::Opengles::Renderer::RendererStrings.getInstance()
        @canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @preResourceImageUtil = ::Org::Allbinary::Image::PreResourceImageUtil.getInstance()
        @lockObject = ::Org::Allbinary::ThreadPackage::SynchObject.new()
        @anyType = ::Org::Allbinary::ThreadPackage::SynchObject.new()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @runnableList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @created = false
        @surfaceCreatedAndInitialized = false
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_OpenGLUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def onSurfaceCreated_j1(gl)
        begin
            if !@created
                @created = true
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).to_s + OpenGLCapabilities.getInstance().to_s, self, @renderStrings.ON_SURFACE_CREATED)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @renderStrings.ON_SURFACE_CREATED, e)
        end
    end
    

    def onSurfaceCreated_j2(gl, loadTextures)
        begin
            loadTextures.load(gl)
            OpenGLLogUtil.getInstance().logError(gl)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @renderStrings.ON_SURFACE_CREATED, e)
        end
    end

    def onSurfaceCreated(*java_overload_args)
        return onSurfaceCreated_j1(*java_overload_args) if java_overload_args.length == 1
        return onSurfaceCreated_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method onSurfaceCreated takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def onSurfaceChanged(gl, graphics)
        if !@surfaceCreatedAndInitialized
            graphics.init()
            @surfaceCreatedAndInitialized = true
        end
        graphics.update()
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        progressCanvas.update(graphics)
        (::Org::Allbinary::Image::Opengles::OpenGLImageCacheFactory.getInstance()).update(gl)
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
            image.set(gl)
        end
    end

    def self.instance()
        OpenGLUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Device; autoload :LoadTextures, "org/allbinary/device/LoadTextures" unless const_defined?(:LoadTextures, false); end; end; end
module ::Org; module Allbinary; module Device; autoload :OpenGLESGraphics, "org/allbinary/device/OpenGLESGraphics" unless const_defined?(:OpenGLESGraphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; module Renderer; autoload :RendererStrings, "org/allbinary/graphics/opengles/renderer/RendererStrings" unless const_defined?(:RendererStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Image; autoload :PreResourceImageUtil, "org/allbinary/image/PreResourceImageUtil" unless const_defined?(:PreResourceImageUtil, false); end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLImageCache, "org/allbinary/image/opengles/OpenGLImageCache" unless const_defined?(:OpenGLImageCache, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLImageCacheFactory, "org/allbinary/image/opengles/OpenGLImageCacheFactory" unless const_defined?(:OpenGLImageCacheFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :SynchObject, "org/allbinary/thread/SynchObject" unless const_defined?(:SynchObject, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :OpenGLCapabilities, "org/allbinary/graphics/opengles/OpenGLCapabilities" unless const_defined?(:OpenGLCapabilities, false)
autoload :OpenGLLogUtil, "org/allbinary/graphics/opengles/OpenGLLogUtil" unless const_defined?(:OpenGLLogUtil, false)
require "java/lang/Runnable"

begin
    OpenGLUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


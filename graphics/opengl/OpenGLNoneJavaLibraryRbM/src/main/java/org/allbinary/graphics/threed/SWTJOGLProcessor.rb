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
# package org.allbinary.graphics.threed

require "java/lang/JavaOverload"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Graphics; module Threed

#OpenGLNone
class SWTJOGLProcessor
    include ::Java::Lang::Runnable
    

    def self.getInstance()
        return @@instance
    end
    

    def init(display, comp)
    end
    java_overload :init, 2
    

    def isHolderCreated()
        return true
    end
    java_overload :isHolderCreated, 0
    

    def setRenderer(renderer)
    end
    java_overload :setRenderer, 1
    

    def isJOGL()
        return false
    end
    java_overload :isJOGL, 0
    

    def createSurface()
    end
    java_overload :createSurface, 0
    

    def onSurfaceCreated()
    end
    java_overload :onSurfaceCreated, 0
    

    def onSurfaceChangedForEvent(event)
    end
    java_overload :onSurfaceChangedForEvent, 1
    

    def onSurfaceChanged()
    end
    java_overload :onSurfaceChanged, 0
    

    def onSurfaceChangedWH(width, height)
    end
    java_overload :onSurfaceChangedWH, 2
    

    def addListener()
    end
    java_overload :addListener, 0
    

    def addListeners(midlet)
    end
    java_overload :addListeners, 1
    

    def run()
    end
    java_overload :run, 0
    

    def clear()
    end
    java_overload :clear, 0
    

    def setCustom(width, height, ratio)
    end
    java_overload :setCustom, 3
    

    def setRatioProcessor(ratioProcessor)
    end
    java_overload :setRatioProcessor, 1
    

    def isPortraitRatioProcessor()
        return true
    end
    java_overload :isPortraitRatioProcessor, 0
    

    def charWidth(font, ch)
        raise RuntimeError.new()
    end
    java_overload :charWidth, 2
    

    def charsWidth(font, ch, offset, length)
        raise RuntimeError.new()
    end
    java_overload :charsWidth, 4
    

    def stringWidth(font, str)
        raise RuntimeError.new()
    end
    java_overload :stringWidth, 2
    

    def substringWidth(font, str, offset, len)
        raise RuntimeError.new()
    end
    java_overload :substringWidth, 4

    def self.instance()
        SWTJOGLProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SWTJOGLProcessor.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SWTJOGLProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SWTJOGLProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Midlet; autoload :MIDlet, "javax/microedition/midlet/MIDlet" unless const_defined?(:MIDlet, false); end; end; end
autoload :RatioProcessor, "org/allbinary/graphics/threed/RatioProcessor" unless const_defined?(:RatioProcessor, false)

begin
    SWTJOGLProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


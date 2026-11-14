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

require "java/lang/Runnable"

#SWTWithoutJOGL
class SWTJOGLProcessor
    include Runnable
    attr_accessor :glHolder

    def initialize_fields
        @glHolder = Class.new(GLHolder.is_a?(Class) ? GLHolder : Object) do
        include(GLHolder) unless GLHolder.is_a?(Class)
        

        def run(renderer)
        end
    end.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SWTJOGLProcessor.instance
    end
    

    def init(display, comp)
    end
    

    def isHolderCreated()
        return @glHolder.isCreated
    end
    

    def setRenderer(renderer)
    end
    

    def isJOGL()
        return false
    end
    

    def createSurface()
    end
    

    def onSurfaceCreated()
    end
    

    def onSurfaceChangedForEvent(event)
    end
    

    def onSurfaceChanged()
    end
    

    def onSurfaceChangedWH(width, height)
    end
    

    def addListener()
    end
    

    def addListeners(midlet)
    end
    

    def run()
    end
    

    def clear()
    end
    

    def setCustom(width, height, ratio)
    end
    

    def setRatioProcessor(ratioProcessor)
    end
    

    def charWidth(font, ch)
        raise RuntimeError.new()
    end
    

    def charsWidth(font, ch, offset, length)
        raise RuntimeError.new()
    end
    

    def stringWidth(font, str)
        raise RuntimeError.new()
    end
    

    def substringWidth(font, str, offset, len)
        raise RuntimeError.new()
    end

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

autoload :Font, "javax/microedition/lcdui/Font"
autoload :MIDlet, "javax/microedition/midlet/MIDlet"
autoload :GLHolder, "org/allbinary/graphics/threed/GLHolder"
autoload :RatioProcessor, "org/allbinary/graphics/threed/RatioProcessor"

begin
    SWTJOGLProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


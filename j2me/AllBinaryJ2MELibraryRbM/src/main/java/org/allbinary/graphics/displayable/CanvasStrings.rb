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
# package org.allbinary.graphics.displayable


class CanvasStrings
    attr_accessor :CONSTRUCTOR, :PAUSE, :UN_PAUSE, :SET_FULL_SCREEN_MODE, :SIZE_CHANGED, :SCALED_IMAGES, :PAINT, :ON_DISPLAY_CHANGE_EVENT, :UPDATE_MEASUREMENT, :FD_WIDTH, :FD_HEIGHT, :EMPTY_CHILD_NAME_LIST, :ABOUT, :OPTIONS, :FONT_ATLAS, :OBJ_MODEL, :MD2_MODEL, :_PNG

    def initialize_fields
        @CONSTRUCTOR = "MyCanvas::MyCanvas"
        @PAUSE = "MyCanvas::pause"
        @UN_PAUSE = "MyCanvas::unPause"
        @SET_FULL_SCREEN_MODE = "setFullScreenMode"
        @SIZE_CHANGED = "sizeChanged"
        @SCALED_IMAGES = "scaledImages"
        @PAINT = "paint"
        @ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent"
        @UPDATE_MEASUREMENT = "updateMeasurement"
        @FD_WIDTH = " font/display width: "
        @FD_HEIGHT = " font/display height: "
        @EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
        @ABOUT = "About"
        @OPTIONS = "Options"
        @FONT_ATLAS = "/font.png"
        @OBJ_MODEL = "_obj"
        @MD2_MODEL = "_md2"
        @_PNG = ".png"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CanvasStrings.instance
    end

    def self.instance()
        CanvasStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CanvasStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CanvasStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CanvasStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"

begin
    CanvasStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


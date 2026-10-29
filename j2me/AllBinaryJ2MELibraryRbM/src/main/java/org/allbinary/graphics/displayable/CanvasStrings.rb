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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"

class CanvasStrings
    @@instance = CanvasStrings.new()
end


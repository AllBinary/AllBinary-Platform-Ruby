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
# package org.allbinary.graphics.color

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

class BasicColorArrayIndexer
    attr_accessor :basicColorArray, :circularIndexUtil

    def initialize_fields
        @basicColorArray = nil
        @circularIndexUtil = nil
    end
    

    def initialize(basicColorArray)
        initialize_fields
        @basicColorArray = basicColorArray
        @circularIndexUtil = CircularIndexUtil.createInstance(@basicColorArray.length)
    end
    

    def next_()
        @circularIndexUtil.next_()
    end
    

    def get()
        return @basicColorArray[@circularIndexUtil.getIndex()]
    end
    

    def getBasicColorArray()
        return @basicColorArray
    end
end

require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/graphics/color/BasicColor"


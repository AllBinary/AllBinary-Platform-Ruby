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
# package org.allbinary.util

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"

class CircularIndexUtil
    attr_accessor :index, :lastIndex, :size

    def initialize_fields
        @index = 0
        @lastIndex = 0
        @size = 0
    end
    

    def initialize(index, size)
        initialize_fields
        self.setSize(size)
        self.setIndex(index)
    end
    

    def next_()
        if @index >= @lastIndex
            @index = 0
        else
            @index += 1
        end
        return @index
    end
    

    def previous()
        if @index < 1
            @index = @lastIndex
        else
            @index -= 1
        end
        return @index
    end
    

    def setIndex(index)
        if index > @lastIndex
            return
        end
        @index = index
    end
    

    def getIndex()
        return @index
    end
    

    def self.createInstance(max)
        return CircularIndexUtil.new(0, max)
    end
    

    def self.createInstanceAt(index, max)
        return CircularIndexUtil.new(index, max)
    end
    

    def setSize(size)
        @size = size
        @lastIndex = size - 1
        @index = 0
    end
    

    def getSize()
        return @size
    end
    

    def toString()
        return StringMaker.new().append(CommonLabels.getInstance().INDEX_LABEL).appendint(@index).append("lastIndex: ").appendint(@lastIndex).append("size: ").appendint(@size).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"

class CircularIndexUtil
    NULL_CIRCULAR_INDEX_UTIL = CircularIndexUtil.new(0, 0)
end


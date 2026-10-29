# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic

# require "jsinterop/annotations/JsType"

#ActualPlatform
class NullUtil
    attr_accessor :NULL_OBJECT, :NULL_CLASS, :NULL_OBJECT_ARRAY, :NULL_CHAR_ARRAY, :NULL_BYTE_ARRAY, :NULL_SHORT_ARRAY_ARRAY, :NULL_INT_ARRAY, :NULL_INT_ARRAY_ARRAY, :NULL_INT_ARRAY_ARRAY_ARRAY, :NULL_FLOAT_ARRAY

    def initialize_fields
        @NULL_OBJECT = Object.new
        @NULL_CLASS = @NULL_OBJECT.class
        @NULL_OBJECT_ARRAY = Array.new(0, nil)
        @NULL_CHAR_ARRAY = Array.new(0, "\0")
        @NULL_BYTE_ARRAY = Array.new(0, 0)
        @NULL_SHORT_ARRAY_ARRAY = Array.new(0) { Array.new(0, 0) }
        @NULL_INT_ARRAY = Array.new(0, 0)
        @NULL_INT_ARRAY_ARRAY = Array.new(0) { Array.new(0, 0) }
        @NULL_INT_ARRAY_ARRAY_ARRAY = Array.new(0) { Array.new(0) { Array.new(0, 0) } }
        @NULL_FLOAT_ARRAY = Array.new(0, 0.0)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return NullUtil.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class NullUtil
    @@instance = NullUtil.new()
end


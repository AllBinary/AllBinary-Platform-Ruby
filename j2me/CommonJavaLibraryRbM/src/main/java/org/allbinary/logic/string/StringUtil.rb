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
# package org.allbinary.logic.string

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"

class StringUtil
    attr_accessor :INIT_STRING, :NULL_STRING, :EMPTY_STRING, :ONE_EMPTY_STRING_ARRAY, :ONE_EMPTY_STRING_ARRAY_OF_ARRAYS, :stringArray

    def initialize_fields
        @INIT_STRING = String.new("")
        @NULL_STRING = "null"
        @EMPTY_STRING = ""
        @ONE_EMPTY_STRING_ARRAY = [@EMPTY_STRING]
        @ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = Array.new(0) { Array.new(0, nil) }
        @stringArray = Array.new(0, nil)
    end
    

    def self.getInstance()
        return StringUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getNonNull(string)
        return string
    end
    

    def getArrayInstance()
        return @stringArray
    end
    

    def count(string, aChar)
        count = 0
        size = string.length
        (0...size).each do |index|
            if string[index] == aChar
                count += 1
            end
        end
        return count
    end
    

    def toString(anyType)
        if anyType != nil
            return anyType.to_s
        else
            return @NULL_STRING
        end
    end

    def self.instance()
        StringUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StringUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StringUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StringUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    StringUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


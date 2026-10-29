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
# require "jsinterop/annotations/JsProperty"
# require "jsinterop/annotations/JsMethod"

#ActualPlatform
class StdUtil
    attr_accessor :EMPTY_VECTOR, :NULL_TABLE, :NULL_MAP

    def initialize_fields
        @EMPTY_VECTOR = self.createVector()
        @NULL_TABLE = self.createHashtable()
        @NULL_MAP = self.createHashMap()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return StdUtil.instance
    end
    

    def createStack()
        return ABStack.new()
    end
    

    def createVector()
        return ABVector.new()
    end
    

    def createHashtable()
        return ABHashtable.new()
    end
    

    def createHashMap()
        return ABHashMap.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/ABHashMap"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/ABStack"
require "org/allbinary/util/ABVector"

class StdUtil
    @@instance = StdUtil.new()
end


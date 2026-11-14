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
        StdUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StdUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StdUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StdUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ABHashMap, "org/allbinary/util/ABHashMap"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :ABStack, "org/allbinary/util/ABStack"
autoload :ABVector, "org/allbinary/util/ABVector"

begin
    StdUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


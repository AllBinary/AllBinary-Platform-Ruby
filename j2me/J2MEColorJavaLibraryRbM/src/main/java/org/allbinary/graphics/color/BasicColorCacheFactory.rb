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

require "java/lang/Object"

class BasicColorCacheFactory
    attr_accessor :hashtable

    def initialize_fields
        @hashtable = StdUtil.getInstance().createHashtable()
    end
    

    def self.getInstance()
        return BasicColorCacheFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def add(basicDefaultColor)
        @hashtable.put(basicDefaultColor.to_i, basicDefaultColor)
    end
    

    def getAndOrCreate(integer)
        java_monitor.synchronize do
        basicColor = @hashtable.get(integer)
        if basicColor == nil
            basicColor = BasicColorFactory.getInstance().createInstance(integer.to_i)
            @hashtable.put(integer, basicColor)
        end
        return basicColor
        end
    end

    def self.instance()
        BasicColorCacheFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicColorCacheFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicColorCacheFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicColorCacheFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"

begin
    BasicColorCacheFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


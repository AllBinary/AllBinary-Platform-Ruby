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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

class BasicColorCacheFactory
    @@instance = BasicColorCacheFactory.new()
end


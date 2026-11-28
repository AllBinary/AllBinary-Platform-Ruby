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

module ::Org; module Allbinary; module Graphics; module Color

class BasicColorCacheFactory
    attr_accessor :hashtable

    def jfields_org_allbinary_graphics_color_BasicColorCacheFactory
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_graphics_color_BasicColorCacheFactory
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

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false)
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false)

begin
    BasicColorCacheFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


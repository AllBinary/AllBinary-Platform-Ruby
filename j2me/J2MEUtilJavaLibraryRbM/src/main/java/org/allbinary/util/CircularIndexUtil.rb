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

module ::Org; module Allbinary; module Util

class CircularIndexUtil
    attr_accessor :index, :lastIndex, :size

    def jfields_org_allbinary_util_CircularIndexUtil
        @index = 0
        @lastIndex = 0
        @size = 0
    end
    

    def initialize(index, size)
        jfields_org_allbinary_util_CircularIndexUtil
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
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().INDEX_LABEL).appendint(@index).append("lastIndex: ").appendint(@lastIndex).append("size: ").appendint(@size).to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_CIRCULAR_INDEX_UTIL, CircularIndexUtil.new(0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CircularIndexUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_CIRCULAR_INDEX_UTIL].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

begin
    CircularIndexUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


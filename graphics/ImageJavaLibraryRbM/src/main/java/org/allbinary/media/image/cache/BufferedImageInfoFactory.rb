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
# package org.allbinary.media.image.cache


class BufferedImageInfoFactory
    

    def initialize()
    end
    

    def self.getInstance(width, height, type)
        stringbuffer = StringMaker.new()
        stringbuffer.appendint(width)
        stringbuffer.appendint(height)
        stringbuffer.appendint(type)
        key = stringbuffer.to_s
        bufferedImageInfo = BufferedImageInfoFactory.hashMap.get(key)
        if bufferedImageInfo == nil
            bufferedImageInfo = BufferedImageInfo.new(width, height, type)
            BufferedImageInfoFactory.hashMap.put(key, bufferedImageInfo)
        end
        return bufferedImageInfo
    end

    def self.hashMap()
        BufferedImageInfoFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        BufferedImageInfoFactory.java_static_fields unless @java_static_fields_started
        @@hashMap = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashMap = StdUtil.getInstance().createHashMap()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BufferedImageInfoFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :BufferedImageInfo, "org/allbinary/media/image/cache/BufferedImageInfo"

begin
    BufferedImageInfoFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


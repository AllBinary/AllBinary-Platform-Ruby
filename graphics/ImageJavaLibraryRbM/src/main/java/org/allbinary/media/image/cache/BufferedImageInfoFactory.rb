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
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        @@hashMap = value
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/cache/BufferedImageInfo"

class BufferedImageInfoFactory
    @@hashMap = StdUtil.getInstance().createHashMap()
end


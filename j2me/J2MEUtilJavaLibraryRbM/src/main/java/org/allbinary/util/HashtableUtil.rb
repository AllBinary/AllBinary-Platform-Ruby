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

class HashtableUtil
    attr_accessor :enumerationUtil

    def initialize_fields
        @enumerationUtil = EnumerationUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return HashtableUtil.instance
    end
    

    def putAll(fromHashtable, hashtable)
        enumeration = fromHashtable.keys()
        keyCanBeNull = nil
        valueCanBeNull = nil
        while @enumerationUtil.hasMoreElements(enumeration)
            keyCanBeNull = @enumerationUtil.nextElement(enumeration)
            valueCanBeNull = hashtable.get(keyCanBeNull)
            if valueCanBeNull == nil
            else
                hashtable.put(keyCanBeNull, valueCanBeNull)
            end
        end
    end
    

    def getKeysAsArray(hashtable)
        objectArray = Array.new(hashtable.size(), nil)
        index = 0
        enumeration = hashtable.keys()
        while @enumerationUtil.hasMoreElements(enumeration)
            objectArray[((index += 1) - 1)] = @enumerationUtil.nextElement(enumeration)
        end
        return objectArray
    end
    

    def getKeysAsList(hashtable)
        list = BasicArrayListS.new(hashtable.size())
        enumeration = hashtable.keys()
        while @enumerationUtil.hasMoreElements(enumeration)
            list.add(@enumerationUtil.nextElement(enumeration))
        end
        return list
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Enumeration"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/util/EnumerationUtil"

class HashtableUtil
    @@instance = HashtableUtil.new()
end


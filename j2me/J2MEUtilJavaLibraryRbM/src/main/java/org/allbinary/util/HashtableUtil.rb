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
        HashtableUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HashtableUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HashtableUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HashtableUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Enumeration, "java/util/Enumeration"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS"
autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil"

begin
    HashtableUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


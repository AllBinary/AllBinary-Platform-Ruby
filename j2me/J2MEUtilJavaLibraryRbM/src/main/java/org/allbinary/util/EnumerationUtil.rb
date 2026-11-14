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
# package org.allbinary.util

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"

#ArkTs does not have this.  So this is for the ArkTs build.
class EnumerationUtil
    

    def self.getInstance()
        return EnumerationUtil.instance
    end
    

    def hasMoreElements(enumeration)
        return enumeration.hasMoreElements()
    end
    

    def nextElement(enumeration)
        return enumeration.nextElement()
    end
    

    def getAsArray(enumeration)
        basicArrayList = BasicArrayListD.new()
        while self.hasMoreElements(enumeration)
            basicArrayList.add(self.nextElement(enumeration))
        end
        return basicArrayList.toArray()
    end

    def self.instance()
        EnumerationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        EnumerationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = EnumerationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EnumerationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Enumeration, "java/util/Enumeration"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    EnumerationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


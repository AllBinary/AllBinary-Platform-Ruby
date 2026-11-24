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
# package org.allbinary

# require "java/util/Map"
# require "java/util/Set"

module ::Org; module Allbinary

#HTMLForJ2ME
class J2SEUtil
    

    def self.getInstance()
        return J2SEUtil.instance
    end
    

    def getHashMapAsArray(hashMap)
        objectArray = hashMap.keySet().toArray()
        return objectArray
    end
    

    def getMapAsArray(map)
        objectArray = map.keySet().toArray()
        return objectArray
    end
    

    def getSetAsArray(set)
        objectArray = set.toArray()
        return objectArray
    end

    def self.instance()
        J2SEUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        J2SEUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = J2SEUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "J2SEUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end

begin
    J2SEUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end


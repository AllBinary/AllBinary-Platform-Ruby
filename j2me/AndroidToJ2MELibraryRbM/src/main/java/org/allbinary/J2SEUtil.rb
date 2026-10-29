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

#AndroidToJ2ME
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"

class J2SEUtil
    @@instance = J2SEUtil.new()
end


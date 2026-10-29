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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Enumeration"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class EnumerationUtil
    @@instance = EnumerationUtil.new()
end


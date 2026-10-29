# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

# require "jsinterop/annotations/JsType"

class VectorUtil
    

    def self.getInstance()
        return VectorUtil.instance
    end
    

    def getSize(anyType)
        vector = anyType
        return vector.size()
    end
    

    def elementAt(anyType, index)
        vector = anyType
        return vector.elementAt(index)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Vector"

class VectorUtil
    @@instance = VectorUtil.new()
end


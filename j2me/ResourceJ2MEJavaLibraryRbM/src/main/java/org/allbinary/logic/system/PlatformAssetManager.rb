# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.system

# require "java/io/InputStream"

class PlatformAssetManager
    

    def self.getInstance()
        return PlatformAssetManager.instance
    end
    

    # throws Exception
    def getResourceAsStream(resource)
        resourceUtil = ResourceUtil.getInstance()
        inputStream = resourceUtil.getResourceAsStream(resource)
        return inputStream
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/data/resource/ResourceUtil"

class PlatformAssetManager
    @@instance = PlatformAssetManager.new()
end


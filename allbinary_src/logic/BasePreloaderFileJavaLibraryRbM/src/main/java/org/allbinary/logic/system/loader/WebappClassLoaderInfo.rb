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
# package org.allbinary.logic.system.loader

require "java/lang/Object"

class WebappClassLoaderInfo
    

    def initialize()
    end
    

    def self.setLoader(classLoader)
        java_monitor.synchronize do
        WebappClassLoaderInfo.classLoader = classLoader
        end
    end
    

    def self.getLoader()
        java_monitor.synchronize do
        return WebappClassLoaderInfo.classLoader
        end
    end

    def self.classLoader()
        return defined?(@@classLoader) ? @@classLoader : nil
    end

    def self.classLoader=(value)
        @@classLoader = value
    end
end

require "org/allbinary/logic/NullUtil"

class WebappClassLoaderInfo
    @@classLoader = NullUtil.getInstance().NULL_OBJECT
end


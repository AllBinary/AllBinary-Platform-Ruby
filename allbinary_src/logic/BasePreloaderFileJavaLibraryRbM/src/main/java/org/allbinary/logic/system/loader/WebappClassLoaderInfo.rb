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
        WebappClassLoaderInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@classLoader) ? @@classLoader : nil
    end

    def self.classLoader=(value)
        WebappClassLoaderInfo.java_static_fields unless @java_static_fields_started
        @@classLoader = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@classLoader = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WebappClassLoaderInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"

begin
    WebappClassLoaderInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


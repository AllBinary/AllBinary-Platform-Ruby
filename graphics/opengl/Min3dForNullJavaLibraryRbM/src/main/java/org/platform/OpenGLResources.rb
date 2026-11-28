# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform


module ::Org; module Platform

class OpenGLResources
    

    def self.getInstance()
        return @@instance
    end
    

    def init()
    end
    

    def isExcluded(name)
        raise RuntimeError.new()
    end
    

    def getIdentifier(name, defType, defPackage)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def openRawResource(id)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def openRawResourceFromName(resourceName)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getResourceAsStream(resourceName)
        raise RuntimeError.new()
    end
    

    def getPackageName()
        raise RuntimeError.new()
    end

    def self.instance()
        OpenGLResources.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLResources.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLResources.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end

begin
    OpenGLResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end


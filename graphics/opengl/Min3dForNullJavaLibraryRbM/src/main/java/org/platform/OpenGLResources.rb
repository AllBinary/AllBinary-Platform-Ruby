# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform

# require "java/io/InputStream"

class OpenGLResources
    

    def self.getInstance()
        return OpenGLResources.instance
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OpenGLResources
    @@instance = OpenGLResources.new()
end


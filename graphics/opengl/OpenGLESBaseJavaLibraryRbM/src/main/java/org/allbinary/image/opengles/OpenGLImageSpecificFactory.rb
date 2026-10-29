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
# package org.allbinary.image.opengles


class OpenGLImageSpecificFactory
    attr_accessor :imageFactory, :updating

    def initialize_fields
        @imageFactory = OpenGLImageFactory::NULL_OPENGL_IMAGE_FACTORY
        @updating = false
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return OpenGLImageSpecificFactory.instance
    end
    

    def setImageFactory(imageFactory)
        @imageFactory = imageFactory
        PreLogUtil.put(StringMaker.new().append("Selected Image Factory: ").append(StringUtil.getInstance().toString(@imageFactory)).to_s, self, "setImageFactory")
    end
    

    def getImageFactory()
        return @imageFactory
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/image/opengles/OpenGLImageFactory"

class OpenGLImageSpecificFactory
    @@instance = OpenGLImageSpecificFactory.new()
end


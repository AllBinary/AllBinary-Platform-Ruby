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
# package org.allbinary.graphics.opengles


class OpenGLFeatureUtil
    attr_accessor :anyThreed

    def initialize_fields
        @anyThreed = nil
    end
    

    def self.getInstance()
        return OpenGLFeatureUtil.instance
    end
    

    def initialize()
        initialize_fields
        openGLConfiguration = OpenGLConfiguration.getInstance()
        features = Features.getInstance()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        @anyThreed = openGLConfiguration.isOpenGL() && (features.isFeature(openGLFeatureFactory.OPENGL_2D_AND_3D) || features.isFeature(openGLFeatureFactory.OPENGL_3D))
    end
    

    def isAnyThreed()
        return @anyThreed
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/OpenGLConfiguration"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"

class OpenGLFeatureUtil
    @@instance = OpenGLFeatureUtil.new()
end


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


module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLFeatureUtil
    attr_accessor :anyThreed

    def jfields_org_allbinary_graphics_opengles_OpenGLFeatureUtil
        @anyThreed = nil unless instance_variable_defined?(:@anyThreed)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_graphics_opengles_OpenGLFeatureUtil
        openGLConfiguration = OpenGLConfiguration.getInstance()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        @anyThreed = openGLConfiguration.isOpenGL() && (features.isFeature(openGLFeatureFactory.OPENGL_2D_AND_3D) || features.isFeature(openGLFeatureFactory.OPENGL_3D))
    end
    

    def isAnyThreed()
        return @anyThreed
    end

    def self.instance()
        OpenGLFeatureUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLFeatureUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLFeatureUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLFeatureUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
autoload :OpenGLConfiguration, "org/allbinary/graphics/opengles/OpenGLConfiguration" unless const_defined?(:OpenGLConfiguration, false)
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false)

begin
    OpenGLFeatureUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform.opengl

require "java/lang/JavaOverload"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"

module ::Org; module Platform; module Opengl

class OpenGLTextureFactory < ::Org::Allbinary::Platform::Opengles::PlatformTextureBaseFactory
    attr_accessor :gluUtils

    def jfields_org_platform_opengl_OpenGLTextureFactory
        @gluUtils = OpenGLGLUUtils.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super()
        jfields_org_platform_opengl_OpenGLTextureFactory
    end
    

    def load(gl, target, level, image, border, flip)
        raise RuntimeError.new()
    end
    java_overload :load, 6

    def self.instance()
        OpenGLTextureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLTextureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLTextureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLTextureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
autoload :OpenGLGLUUtils, "org/platform/opengl/OpenGLGLUUtils" unless const_defined?(:OpenGLGLUUtils, false)

begin
    OpenGLTextureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


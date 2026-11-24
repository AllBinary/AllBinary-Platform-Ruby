# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform.opengl

# require "java/nio/ByteBuffer"

module ::Org; module Platform; module Opengl

class OpenGLGLUUtils
    

    def self.getInstance()
        return OpenGLGLUUtils.instance
    end
    

    def makeByteBuffer(bmp, flip)
        raise RuntimeError.new()
    end
    

    def texImage2D_j8_1(gl, glVersion, target, level, generateMipMap, openGLESImage, border, flip)
        raise RuntimeError.new()
    end
    

    def texImage2D_j8_2(gl, glVersion, target, level, generateMipMap, bitmap, border, flip)
        raise RuntimeError.new()
    end

    def texImage2D(*java_overload_args)
        return texImage2D_j8(*java_overload_args) if java_overload_args.length == 8
        raise ArgumentError, "No method texImage2D takes #{java_overload_args.length} arguments"
    end

    def texImage2D_j8(*java_overload_args)
        return texImage2D_j8_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Javax::Microedition::Khronos::Opengles::GL10)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && java_overload_args[2].is_a?(::Integer) && java_overload_args[3].is_a?(::Integer) && (java_overload_args[4] == true || java_overload_args[4] == false) && (java_overload_args[5].nil? || java_overload_args[5].is_a?(::Org::Allbinary::Image::Opengles::OpenGLESImage)) && java_overload_args[6].is_a?(::Integer) && (java_overload_args[7] == true || java_overload_args[7] == false)
        return texImage2D_j8_2(*java_overload_args)
    end

    def self.instance()
        OpenGLGLUUtils.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLGLUUtils.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLGLUUtils.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLGLUUtils"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :OpenGLBitmap, "org/allbinary/graphics/OpenGLBitmap" unless const_defined?(:OpenGLBitmap, false); end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end

begin
    OpenGLGLUUtils.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles


module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLLogUtil
    attr_accessor :MAX_TEXTURE, :LOG_ERROR, :IMAGE

    def jfields_org_allbinary_graphics_opengles_OpenGLLogUtil
        @MAX_TEXTURE = " Max Texture Size: "
        @LOG_ERROR = "logError"
        @IMAGE = " Image: "
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_OpenGLLogUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def logError_j1(gl)
        error = gl.glGetError()
        if error != ::Javax::Microedition::Khronos::Opengles::GL10::GL_NO_ERROR
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Image::Opengles::OpenGLStrings.getInstance().GL_ERROR_LABEL)
            stringBuffer.appendint(error)
            if error == 1281
                stringBuffer.append(@MAX_TEXTURE)
                maxTextureSize = (Array.new(1, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
                gl.glGetIntegerv(::Javax::Microedition::Khronos::Opengles::GL10::GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
                stringBuffer.appendint(maxTextureSize[0])
            end
            if error == 1280
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, ::Org::Allbinary::Image::Opengles::OpenGLStrings.getInstance().SET)
            else
                ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(stringBuffer.to_s, self)
            end
        end
    end
    

    def logError_j2(gl, image)
        error = gl.glGetError()
        if error != ::Javax::Microedition::Khronos::Opengles::GL10::GL_NO_ERROR
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Image::Opengles::OpenGLStrings.getInstance().GL_ERROR_LABEL)
            stringBuffer.appendint(error)
            if error == 1281
                stringBuffer.append(@MAX_TEXTURE)
                maxTextureSize = (Array.new(1, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
                gl.glGetIntegerv(::Javax::Microedition::Khronos::Opengles::GL10::GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
                stringBuffer.appendint(maxTextureSize[0])
            end
            stringBuffer.append(@IMAGE)
            stringBuffer.append(image.to_s)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, @LOG_ERROR)
        end
    end

    def logError(*java_overload_args)
        return logError_j1(*java_overload_args) if java_overload_args.length == 1
        return logError_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method logError takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        OpenGLLogUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLLogUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLLogUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLLogUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLStrings, "org/allbinary/image/opengles/OpenGLStrings" unless const_defined?(:OpenGLStrings, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end

begin
    OpenGLLogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end


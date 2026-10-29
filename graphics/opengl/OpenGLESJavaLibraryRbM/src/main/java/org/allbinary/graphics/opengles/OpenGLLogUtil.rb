# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles

# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"

class OpenGLLogUtil
    attr_accessor :MAX_TEXTURE, :LOG_ERROR, :IMAGE

    def initialize_fields
        @MAX_TEXTURE = " Max Texture Size: "
        @LOG_ERROR = "logError"
        @IMAGE = " Image: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return OpenGLLogUtil.instance
    end
    

    def logError(gl)
        error = gl.glGetError()
        if error != GL10.GL_NO_ERROR
            stringBuffer = StringMaker.new()
            stringBuffer.append(OpenGLStrings.getInstance().GL_ERROR_LABEL)
            stringBuffer.appendint(error)
            if error == 1281
                stringBuffer.append(@MAX_TEXTURE)
                maxTextureSize = Array.new(1, 0)
                gl.glGetIntegerv(GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
                stringBuffer.appendint(maxTextureSize[0])
            end
            if error == 1280
                PreLogUtil.put(stringBuffer.to_s, self, OpenGLStrings.getInstance().SET)
            else
                ForcedLogUtil.log(stringBuffer.to_s, self)
            end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def logError(gl, image)
        error = gl.glGetError()
        if error != GL10.GL_NO_ERROR
            stringBuffer = StringMaker.new()
            stringBuffer.append(OpenGLStrings.getInstance().GL_ERROR_LABEL)
            stringBuffer.appendint(error)
            if error == 1281
                stringBuffer.append(@MAX_TEXTURE)
                maxTextureSize = Array.new(1, 0)
                gl.glGetIntegerv(GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
                stringBuffer.appendint(maxTextureSize[0])
            end
            stringBuffer.append(@IMAGE)
            stringBuffer.append(image.to_s)
            PreLogUtil.put(stringBuffer.to_s, self, @LOG_ERROR)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/image/opengles/OpenGLStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"

class OpenGLLogUtil
    @@instance = OpenGLLogUtil.new()
end


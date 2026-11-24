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
# package org.allbinary.opengles

# require "java/nio/Buffer"
# require "java/nio/ByteBuffer"
# require "java/nio/ByteOrder"
# require "java/nio/FloatBuffer"

module ::Org; module Allbinary; module Opengles

class GLUtil
    attr_accessor :BYTES_PER_FLOAT, :NULL_FLOAT_BUFFER

    def jfields_org_allbinary_opengles_GLUtil
        @BYTES_PER_FLOAT = 4
        @NULL_FLOAT_BUFFER = ByteBuffer.allocateDirect(0).asFloatBuffer()
    end

    def initialize
        jfields_org_allbinary_opengles_GLUtil
    end
    

    def self.getInstance()
        return GLUtil.instance
    end
    

    def makeFloatBuffer3(p_a, p_b, p_c)
        b = ByteBuffer.allocateDirect(3 * @BYTES_PER_FLOAT)
        b.order(ByteOrder.nativeOrder())
        buffer = b.asFloatBuffer()
        buffer.put(p_a)
        buffer.put(p_b)
        buffer.put(p_c)
        self.position(buffer, 0)
        return buffer
    end
    

    def makeFloatBuffer4(p_a, p_b, p_c, p_d)
        b = ByteBuffer.allocateDirect(4 * @BYTES_PER_FLOAT)
        b.order(ByteOrder.nativeOrder())
        buffer = b.asFloatBuffer()
        buffer.put(p_a)
        buffer.put(p_b)
        buffer.put(p_c)
        buffer.put(p_d)
        self.position(buffer, 0)
        return buffer
    end
    

    def makeFloatBuffer(byteBuffer)
        b = ByteBuffer.allocateDirect(byteBuffer.limit() * @BYTES_PER_FLOAT)
        b.order(ByteOrder.nativeOrder())
        buffer = b.asFloatBuffer()
        unsigned = 0
        v = 0.0
        while byteBuffer.hasRemaining()
            unsigned = (((byteBuffer.get()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })) & 0xFF
            v = ((unsigned).to_f) / 255.0
            buffer.put(v)
        end
        self.position(buffer, 0)
        return buffer
    end
    

    def position(buffer, newPosition)
        return buffer.position(newPosition)
    end
    

    def rotateUVs(uvs, angleDegrees, pivotU, pivotV)
        angleRad = ((angleDegrees) * Math::PI / 180)
        cosA = Math.cos(angleRad)
        sinA = Math.sin(angleRad)
        (0...uvs.length).step(2) do |i|
            u = uvs[i]
            v = uvs[i + 1]
            du = u - pivotU
            dv = v - pivotV
            ru = (du * cosA - dv * sinA) + pivotU
            rv = (du * sinA + dv * cosA) + pivotV
            uvs[i] = ru
            uvs[i + 1] = rv
        end
    end

    def self.instance()
        GLUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GLUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GLUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GLUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    GLUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


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

class GLUtil
    attr_accessor :BYTES_PER_FLOAT

    def initialize_fields
        @BYTES_PER_FLOAT = 4
    end

    def initialize
        initialize_fields
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
            unsigned = byteBuffer.get() & 0xFF
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GLUtil
    @@instance = GLUtil.new()
end


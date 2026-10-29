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

require "org/allbinary/opengles/JOGL10"

#JOGLEToKhronosGL11
class JOGL11 < JOGL10
    include GL11
    attr_accessor :gl11

    def initialize_fields
        @gl11 = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(gl)
        constructor2(gl, gl)
    end
    

    def constructor2(gl, gl2)
        method(:initialize).super_method.call(gl, gl2)
        initialize_fields
        @gl11 = getJOGLGL()
    end
    

    def glBindBuffer(target, buffer)
        @gl11.glBindBuffer(target, buffer)
    end
    

    def glBufferData(target, size, data, usage)
        @gl11.glBufferData(target, size, data, usage)
    end
    

    def glBufferSubData(target, offset, size, data)
        @gl11.glBufferSubData(target, offset, size, data)
    end
    

    def glClipPlanef(plane, equation, offset)
        @gl11.glClipPlanef(plane, equation, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glClipPlanef(plane, equation)
        @gl11.glClipPlanef(plane, equation)
    end
    

    def glColor4ub(red, green, blue, alpha)
        @gl11.glColor4ub(red, green, blue, alpha)
    end
    

    def glColorPointer(size, type, stride, offset)
        @gl11.glColorPointer(size, type, stride, offset)
    end
    

    def glDeleteBuffers(n, buffers, offset)
        @gl11.glDeleteBuffers(n, buffers, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDeleteBuffers(n, buffers)
        @gl11.glDeleteBuffers(n, buffers)
    end
    

    def glDrawElements(mode, count, type, offset)
        @gl11.glDrawElements(mode, count, type, offset)
    end
    

    def glGenBuffers(n, buffers, offset)
        @gl11.glGenBuffers(n, buffers, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGenBuffers(n, buffers)
        @gl11.glGenBuffers(n, buffers)
    end
    

    def glGetBufferParameteriv(target, pname, params, offset)
        @gl11.glGetBufferParameteriv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetBufferParameteriv(target, pname, params)
        @gl11.glGetBufferParameteriv(target, pname, params)
    end
    

    def glGetClipPlanef(pname, eqn, offset)
        @gl11.glGetClipPlanef(pname, eqn, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetClipPlanef(pname, eqn)
        @gl11.glGetClipPlanef(pname, eqn)
    end
    

    def glGetFloatv(pname, params, offset)
        @gl11.glGetFloatv(pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetFloatv(pname, params)
        @gl11.glGetFloatv(pname, params)
    end
    

    def glGetLightfv(light, pname, params, offset)
        @gl11.glGetLightfv(light, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetLightfv(light, pname, params)
        @gl11.glGetLightfv(light, pname, params)
    end
    

    def glGetMaterialfv(face, pname, params, offset)
        @gl11.glGetMaterialfv(face, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetMaterialfv(face, pname, params)
        @gl11.glGetMaterialfv(face, pname, params)
    end
    

    def glGetTexEnviv(env, pname, params, offset)
        @gl11.glGetTexEnviv(env, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexEnviv(env, pname, params)
        @gl11.glGetTexEnviv(env, pname, params)
    end
    

    def glGetTexParameterfv(target, pname, params, offset)
        @gl11.glGetTexParameterfv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexParameterfv(target, pname, params)
        @gl11.glGetTexParameterfv(target, pname, params)
    end
    

    def glGetTexParameteriv(target, pname, params, offset)
        @gl11.glGetTexParameteriv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexParameteriv(target, pname, params)
        @gl11.glGetTexParameteriv(target, pname, params)
    end
    

    def glIsBuffer(buffer)
        return @gl11.glIsBuffer(buffer)
    end
    

    def glIsEnabled(cap)
        return @gl11.glIsEnabled(cap)
    end
    

    def glIsTexture(texture)
        return @gl11.glIsTexture(texture)
    end
    

    def glNormalPointer(type, stride, offset)
        @gl11.glNormalPointer(type, stride, offset)
    end
    

    def glPointParameterf(pname, param)
        @gl11.glPointParameterf(pname, param)
    end
    

    def glPointParameterfv(pname, params, offset)
        @gl11.glPointParameterfv(pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glPointParameterfv(pname, params)
        @gl11.glPointParameterfv(pname, params)
    end
    

    def glTexCoordPointer(size, type, stride, offset)
        @gl11.glTexCoordPointer(size, type, stride, offset)
    end
    

    def glTexEnvi(target, pname, param)
        @gl11.glTexEnvi(target, pname, param)
    end
    

    def glTexEnviv(target, pname, params, offset)
        @gl11.glTexEnviv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnviv(target, pname, params)
        @gl11.glTexEnviv(target, pname, params)
    end
    

    def glTexParameterfv(target, pname, params, offset)
        @gl11.glTexParameterfv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexParameterfv(target, pname, params)
        @gl11.glTexParameterfv(target, pname, params)
    end
    

    def glTexParameteri(target, pname, param)
        @gl11.glTexParameteri(target, pname, param)
    end
    

    def glTexParameteriv(target, pname, params, offset)
        @gl11.glTexParameteriv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexParameteriv(target, pname, params)
        @gl11.glTexParameteriv(target, pname, params)
    end
    

    def glTexParameterxv(target, pname, params, offset)
        @gl11.glTexParameteriv(target, pname, params, offset)
    end
    

    def glVertexPointer(size, type, stride, offset)
        @gl11.glVertexPointer(size, type, stride, offset)
    end
end

require "com/jogamp/opengl/GL"
require "com/jogamp/opengl/GL2"


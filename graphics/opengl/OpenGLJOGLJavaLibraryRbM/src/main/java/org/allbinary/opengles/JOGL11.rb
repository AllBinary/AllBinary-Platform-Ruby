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

require "java/lang/JavaOverload"
# require "java/nio/Buffer"
# require "java/nio/FloatBuffer"
# require "java/nio/IntBuffer"
require "javax/microedition/khronos/opengles/GL11"
require "org/allbinary/opengles/JOGL10"

module ::Org; module Allbinary; module Opengles

#JOGLEToKhronosGL11
class JOGL11 < JOGL10
    include ::Javax::Microedition::Khronos::Opengles::GL11
    attr_accessor :gl11

    def jfields_org_allbinary_opengles_JOGL11
        @gl11 = nil unless instance_variable_defined?(:@gl11)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_opengles_JOGL11_1(*args)
        when 2 then jnew_org_allbinary_opengles_JOGL11_2(*args)
        else raise ArgumentError, "No constructor of JOGL11 takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_opengles_JOGL11_1(gl)
        jnew_org_allbinary_opengles_JOGL11_2(gl, gl)
    end
    

    def jnew_org_allbinary_opengles_JOGL11_2(gl, gl2)
        JOGL11.superclass.instance_method(:initialize).bind(self).call(gl, gl2)
        jfields_org_allbinary_opengles_JOGL11
        @gl11 = getJOGLGL()
    end
    

    def glBindBuffer(target, buffer)
        @gl11.glBindBuffer(target, buffer)
    end
    java_overload :glBindBuffer, 2
    

    def glBufferData(target, size, data, usage)
        @gl11.glBufferData(target, size, data, usage)
    end
    java_overload :glBufferData, 4
    

    def glBufferSubData(target, offset, size, data)
        @gl11.glBufferSubData(target, offset, size, data)
    end
    java_overload :glBufferSubData, 4
    

    def glClipPlanef_j3(plane, equation, offset)
        @gl11.glClipPlanef(plane, equation, offset)
    end
    

    def glClipPlanef_j2(plane, equation)
        @gl11.glClipPlanef(plane, equation)
    end

    def glClipPlanef(*java_overload_args)
        return glClipPlanef_j3(*java_overload_args) if java_overload_args.length == 3
        return glClipPlanef_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glClipPlanef takes #{java_overload_args.length} arguments"
    end
    

    def glColor4ub(red, green, blue, alpha)
        @gl11.glColor4ub(red, green, blue, alpha)
    end
    java_overload :glColor4ub, 4
    

    def glColorPointer(size, type, stride, offset)
        @gl11.glColorPointer(size, type, stride, offset)
    end
    java_overload :glColorPointer, 4
    

    def glDeleteBuffers_j3(n, buffers, offset)
        @gl11.glDeleteBuffers(n, buffers, offset)
    end
    

    def glDeleteBuffers_j2(n, buffers)
        @gl11.glDeleteBuffers(n, buffers)
    end

    def glDeleteBuffers(*java_overload_args)
        return glDeleteBuffers_j3(*java_overload_args) if java_overload_args.length == 3
        return glDeleteBuffers_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glDeleteBuffers takes #{java_overload_args.length} arguments"
    end
    

    def glDrawElements(mode, count, type, offset)
        @gl11.glDrawElements(mode, count, type, offset)
    end
    java_overload :glDrawElements, 4
    

    def glGenBuffers_j3(n, buffers, offset)
        @gl11.glGenBuffers(n, buffers, offset)
    end
    

    def glGenBuffers_j2(n, buffers)
        @gl11.glGenBuffers(n, buffers)
    end

    def glGenBuffers(*java_overload_args)
        return glGenBuffers_j3(*java_overload_args) if java_overload_args.length == 3
        return glGenBuffers_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glGenBuffers takes #{java_overload_args.length} arguments"
    end
    

    def glGetBufferParameteriv_j4(target, pname, params, offset)
        @gl11.glGetBufferParameteriv(target, pname, params, offset)
    end
    

    def glGetBufferParameteriv_j3(target, pname, params)
        @gl11.glGetBufferParameteriv(target, pname, params)
    end

    def glGetBufferParameteriv(*java_overload_args)
        return glGetBufferParameteriv_j4(*java_overload_args) if java_overload_args.length == 4
        return glGetBufferParameteriv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glGetBufferParameteriv takes #{java_overload_args.length} arguments"
    end
    

    def glGetClipPlanef_j3(pname, eqn, offset)
        @gl11.glGetClipPlanef(pname, eqn, offset)
    end
    

    def glGetClipPlanef_j2(pname, eqn)
        @gl11.glGetClipPlanef(pname, eqn)
    end

    def glGetClipPlanef(*java_overload_args)
        return glGetClipPlanef_j3(*java_overload_args) if java_overload_args.length == 3
        return glGetClipPlanef_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glGetClipPlanef takes #{java_overload_args.length} arguments"
    end
    

    def glGetFloatv_j3(pname, params, offset)
        @gl11.glGetFloatv(pname, params, offset)
    end
    

    def glGetFloatv_j2(pname, params)
        @gl11.glGetFloatv(pname, params)
    end

    def glGetFloatv(*java_overload_args)
        return glGetFloatv_j3(*java_overload_args) if java_overload_args.length == 3
        return glGetFloatv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glGetFloatv takes #{java_overload_args.length} arguments"
    end
    

    def glGetLightfv_j4(light, pname, params, offset)
        @gl11.glGetLightfv(light, pname, params, offset)
    end
    

    def glGetLightfv_j3(light, pname, params)
        @gl11.glGetLightfv(light, pname, params)
    end

    def glGetLightfv(*java_overload_args)
        return glGetLightfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glGetLightfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glGetLightfv takes #{java_overload_args.length} arguments"
    end
    

    def glGetMaterialfv_j4(face, pname, params, offset)
        @gl11.glGetMaterialfv(face, pname, params, offset)
    end
    

    def glGetMaterialfv_j3(face, pname, params)
        @gl11.glGetMaterialfv(face, pname, params)
    end

    def glGetMaterialfv(*java_overload_args)
        return glGetMaterialfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glGetMaterialfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glGetMaterialfv takes #{java_overload_args.length} arguments"
    end
    

    def glGetTexEnviv_j4(env, pname, params, offset)
        @gl11.glGetTexEnviv(env, pname, params, offset)
    end
    

    def glGetTexEnviv_j3(env, pname, params)
        @gl11.glGetTexEnviv(env, pname, params)
    end

    def glGetTexEnviv(*java_overload_args)
        return glGetTexEnviv_j4(*java_overload_args) if java_overload_args.length == 4
        return glGetTexEnviv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glGetTexEnviv takes #{java_overload_args.length} arguments"
    end
    

    def glGetTexParameterfv_j4(target, pname, params, offset)
        @gl11.glGetTexParameterfv(target, pname, params, offset)
    end
    

    def glGetTexParameterfv_j3(target, pname, params)
        @gl11.glGetTexParameterfv(target, pname, params)
    end

    def glGetTexParameterfv(*java_overload_args)
        return glGetTexParameterfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glGetTexParameterfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glGetTexParameterfv takes #{java_overload_args.length} arguments"
    end
    

    def glGetTexParameteriv_j4(target, pname, params, offset)
        @gl11.glGetTexParameteriv(target, pname, params, offset)
    end
    

    def glGetTexParameteriv_j3(target, pname, params)
        @gl11.glGetTexParameteriv(target, pname, params)
    end

    def glGetTexParameteriv(*java_overload_args)
        return glGetTexParameteriv_j4(*java_overload_args) if java_overload_args.length == 4
        return glGetTexParameteriv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glGetTexParameteriv takes #{java_overload_args.length} arguments"
    end
    

    def glIsBuffer(buffer)
        return @gl11.glIsBuffer(buffer)
    end
    java_overload :glIsBuffer, 1
    

    def glIsEnabled(cap)
        return @gl11.glIsEnabled(cap)
    end
    java_overload :glIsEnabled, 1
    

    def glIsTexture(texture)
        return @gl11.glIsTexture(texture)
    end
    java_overload :glIsTexture, 1
    

    def glNormalPointer(type, stride, offset)
        @gl11.glNormalPointer(type, stride, offset)
    end
    java_overload :glNormalPointer, 3
    

    def glPointParameterf(pname, param)
        @gl11.glPointParameterf(pname, param)
    end
    java_overload :glPointParameterf, 2
    

    def glPointParameterfv_j3(pname, params, offset)
        @gl11.glPointParameterfv(pname, params, offset)
    end
    

    def glPointParameterfv_j2(pname, params)
        @gl11.glPointParameterfv(pname, params)
    end

    def glPointParameterfv(*java_overload_args)
        return glPointParameterfv_j3(*java_overload_args) if java_overload_args.length == 3
        return glPointParameterfv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glPointParameterfv takes #{java_overload_args.length} arguments"
    end
    

    def glTexCoordPointer(size, type, stride, offset)
        @gl11.glTexCoordPointer(size, type, stride, offset)
    end
    java_overload :glTexCoordPointer, 4
    

    def glTexEnvi(target, pname, param)
        @gl11.glTexEnvi(target, pname, param)
    end
    java_overload :glTexEnvi, 3
    

    def glTexEnviv_j4(target, pname, params, offset)
        @gl11.glTexEnviv(target, pname, params, offset)
    end
    

    def glTexEnviv_j3(target, pname, params)
        @gl11.glTexEnviv(target, pname, params)
    end

    def glTexEnviv(*java_overload_args)
        return glTexEnviv_j4(*java_overload_args) if java_overload_args.length == 4
        return glTexEnviv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glTexEnviv takes #{java_overload_args.length} arguments"
    end
    

    def glTexParameterfv_j4(target, pname, params, offset)
        @gl11.glTexParameterfv(target, pname, params, offset)
    end
    

    def glTexParameterfv_j3(target, pname, params)
        @gl11.glTexParameterfv(target, pname, params)
    end

    def glTexParameterfv(*java_overload_args)
        return glTexParameterfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glTexParameterfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glTexParameterfv takes #{java_overload_args.length} arguments"
    end
    

    def glTexParameteri(target, pname, param)
        @gl11.glTexParameteri(target, pname, param)
    end
    java_overload :glTexParameteri, 3
    

    def glTexParameteriv_j4(target, pname, params, offset)
        @gl11.glTexParameteriv(target, pname, params, offset)
    end
    

    def glTexParameteriv_j3(target, pname, params)
        @gl11.glTexParameteriv(target, pname, params)
    end

    def glTexParameteriv(*java_overload_args)
        return glTexParameteriv_j4(*java_overload_args) if java_overload_args.length == 4
        return glTexParameteriv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glTexParameteriv takes #{java_overload_args.length} arguments"
    end
    

    def glTexParameterxv(target, pname, params, offset)
        @gl11.glTexParameteriv(target, pname, params, offset)
    end
    java_overload :glTexParameterxv, 4
    

    def glVertexPointer(size, type, stride, offset)
        @gl11.glVertexPointer(size, type, stride, offset)
    end
    java_overload :glVertexPointer, 4
end

module ::Com; module Jogamp; module Opengl; autoload :GL, "com/jogamp/opengl/GL" unless const_defined?(:GL, false); end; end; end
module ::Com; module Jogamp; module Opengl; autoload :GL2, "com/jogamp/opengl/GL2" unless const_defined?(:GL2, false); end; end; end

end; end; end


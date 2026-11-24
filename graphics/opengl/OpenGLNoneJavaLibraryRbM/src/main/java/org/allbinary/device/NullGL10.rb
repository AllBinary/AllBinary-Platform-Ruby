# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.device

require "java/lang/JavaOverload"
require "javax/microedition/khronos/opengles/GL10"
# require "java/nio/Buffer"
# require "java/nio/FloatBuffer"
# require "java/nio/IntBuffer"

module ::Org; module Allbinary; module Device

class NullGL10
    include ::Javax::Microedition::Khronos::Opengles::GL10
    

    def glActiveTexture(texture)
        return
    end
    java_overload :glActiveTexture, 1
    

    def glAlphaFunc(func, ref)
        return
    end
    java_overload :glAlphaFunc, 2
    

    def glBindTexture(target, texture)
        return
    end
    java_overload :glBindTexture, 2
    

    def glBlendFunc(sfactor, dfactor)
        return
    end
    java_overload :glBlendFunc, 2
    

    def glClear(mask)
        return
    end
    java_overload :glClear, 1
    

    def glClearColor(red, green, blue, alpha)
        return
    end
    java_overload :glClearColor, 4
    

    def glClearDepthf(depth)
        return
    end
    java_overload :glClearDepthf, 1
    

    def glClearStencil(s)
        return
    end
    java_overload :glClearStencil, 1
    

    def glClientActiveTexture(texture)
        return
    end
    java_overload :glClientActiveTexture, 1
    

    def glColor4f(red, green, blue, alpha)
        return
    end
    java_overload :glColor4f, 4
    

    def glColorMask(red, green, blue, alpha)
        return
    end
    java_overload :glColorMask, 4
    

    def glColorPointer(size, type, stride, pointer)
        return
    end
    java_overload :glColorPointer, 4
    

    def glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
        return
    end
    java_overload :glCompressedTexImage2D, 8
    

    def glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
        return
    end
    java_overload :glCompressedTexSubImage2D, 9
    

    def glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
        return
    end
    java_overload :glCopyTexImage2D, 8
    

    def glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
        return
    end
    java_overload :glCopyTexSubImage2D, 8
    

    def glCullFace(mode)
        return
    end
    java_overload :glCullFace, 1
    

    def glDeleteTextures_j3(n, textures, offset)
        return
    end
    

    def glDeleteTextures_j2(n, textures)
        return
    end

    def glDeleteTextures(*java_overload_args)
        return glDeleteTextures_j3(*java_overload_args) if java_overload_args.length == 3
        return glDeleteTextures_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glDeleteTextures takes #{java_overload_args.length} arguments"
    end
    

    def glDepthFunc(func)
        return
    end
    java_overload :glDepthFunc, 1
    

    def glDepthMask(flag)
        return
    end
    java_overload :glDepthMask, 1
    

    def glDepthRangef(zNear, zFar)
        return
    end
    java_overload :glDepthRangef, 2
    

    def glDisable(cap)
        return
    end
    java_overload :glDisable, 1
    

    def glDisableClientState(array)
        return
    end
    java_overload :glDisableClientState, 1
    

    def glDrawArrays(mode, first, count)
        return
    end
    java_overload :glDrawArrays, 3
    

    def glDrawElements(mode, count, type, indices)
        return
    end
    java_overload :glDrawElements, 4
    

    def glEnable(cap)
        return
    end
    java_overload :glEnable, 1
    

    def glEnableClientState(array)
        return
    end
    java_overload :glEnableClientState, 1
    

    def glFinish()
        return
    end
    java_overload :glFinish, 0
    

    def glFlush()
        return
    end
    java_overload :glFlush, 0
    

    def glFogf(pname, param)
        return
    end
    java_overload :glFogf, 2
    

    def glFogfv_j3(pname, params, offset)
        return
    end
    

    def glFogfv_j2(pname, params)
        return
    end

    def glFogfv(*java_overload_args)
        return glFogfv_j3(*java_overload_args) if java_overload_args.length == 3
        return glFogfv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glFogfv takes #{java_overload_args.length} arguments"
    end
    

    def glFrontFace(mode)
        return
    end
    java_overload :glFrontFace, 1
    

    def glFrustumf(left, right, bottom, top, zNear, zFar)
        return
    end
    java_overload :glFrustumf, 6
    

    def glGenTextures_j3(n, textures, offset)
        return
    end
    

    def glGenTextures_j2(n, textures)
        return
    end

    def glGenTextures(*java_overload_args)
        return glGenTextures_j3(*java_overload_args) if java_overload_args.length == 3
        return glGenTextures_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glGenTextures takes #{java_overload_args.length} arguments"
    end
    

    def glGetError()
        return 0
    end
    java_overload :glGetError, 0
    

    def glGetIntegerv_j3(pname, params, offset)
        return
    end
    

    def glGetIntegerv_j2(pname, params)
        return
    end

    def glGetIntegerv(*java_overload_args)
        return glGetIntegerv_j3(*java_overload_args) if java_overload_args.length == 3
        return glGetIntegerv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glGetIntegerv takes #{java_overload_args.length} arguments"
    end
    

    def glGetString(name)
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :glGetString, 1
    

    def glHint(target, mode)
        return
    end
    java_overload :glHint, 2
    

    def glLightModelf(pname, param)
        return
    end
    java_overload :glLightModelf, 2
    

    def glLightModelfv_j3(pname, params, offset)
        return
    end
    

    def glLightModelfv_j2(pname, params)
        return
    end

    def glLightModelfv(*java_overload_args)
        return glLightModelfv_j3(*java_overload_args) if java_overload_args.length == 3
        return glLightModelfv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glLightModelfv takes #{java_overload_args.length} arguments"
    end
    

    def glLightf(light, pname, param)
        return
    end
    java_overload :glLightf, 3
    

    def glLightfv_j4(light, pname, params, offset)
        return
    end
    

    def glLightfv_j3(light, pname, params)
        return
    end

    def glLightfv(*java_overload_args)
        return glLightfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glLightfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glLightfv takes #{java_overload_args.length} arguments"
    end
    

    def glLineWidth(width)
        return
    end
    java_overload :glLineWidth, 1
    

    def glLoadIdentity()
        return
    end
    java_overload :glLoadIdentity, 0
    

    def glLoadMatrixf_j2(m, offset)
        return
    end
    

    def glLoadMatrixf_j1(m)
        return
    end

    def glLoadMatrixf(*java_overload_args)
        return glLoadMatrixf_j2(*java_overload_args) if java_overload_args.length == 2
        return glLoadMatrixf_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glLoadMatrixf takes #{java_overload_args.length} arguments"
    end
    

    def glLogicOp(opcode)
        return
    end
    java_overload :glLogicOp, 1
    

    def glMaterialf(face, pname, param)
        return
    end
    java_overload :glMaterialf, 3
    

    def glMaterialfv_j4(face, pname, params, offset)
        return
    end
    

    def glMaterialfv_j3(face, pname, params)
        return
    end

    def glMaterialfv(*java_overload_args)
        return glMaterialfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glMaterialfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glMaterialfv takes #{java_overload_args.length} arguments"
    end
    

    def glMatrixMode(mode)
        return
    end
    java_overload :glMatrixMode, 1
    

    def glMultMatrixf_j2(m, offset)
        return
    end
    

    def glMultMatrixf_j1(m)
        return
    end

    def glMultMatrixf(*java_overload_args)
        return glMultMatrixf_j2(*java_overload_args) if java_overload_args.length == 2
        return glMultMatrixf_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glMultMatrixf takes #{java_overload_args.length} arguments"
    end
    

    def glMultiTexCoord4f(target, s, t, r, q)
        return
    end
    java_overload :glMultiTexCoord4f, 5
    

    def glNormal3f(nx, ny, nz)
        return
    end
    java_overload :glNormal3f, 3
    

    def glNormalPointer(type, stride, pointer)
        return
    end
    java_overload :glNormalPointer, 3
    

    def glOrthof(left, right, bottom, top, zNear, zFar)
        return
    end
    java_overload :glOrthof, 6
    

    def glPixelStorei(pname, param)
        return
    end
    java_overload :glPixelStorei, 2
    

    def glPointSize(size)
        return
    end
    java_overload :glPointSize, 1
    

    def glPolygonOffset(factor, units)
        return
    end
    java_overload :glPolygonOffset, 2
    

    def glPopMatrix()
        return
    end
    java_overload :glPopMatrix, 0
    

    def glPushMatrix()
        return
    end
    java_overload :glPushMatrix, 0
    

    def glReadPixels(x, y, width, height, format, type, pixels)
        return
    end
    java_overload :glReadPixels, 7
    

    def glRotatef(angle, x, y, z)
        return
    end
    java_overload :glRotatef, 4
    

    def glRotatex(angle, x, y, z)
        return
    end
    java_overload :glRotatex, 4
    

    def glSampleCoverage(value, invert)
        return
    end
    java_overload :glSampleCoverage, 2
    

    def glScalef(x, y, z)
        return
    end
    java_overload :glScalef, 3
    

    def glScalex(x, y, z)
        return
    end
    java_overload :glScalex, 3
    

    def glScissor(x, y, width, height)
        return
    end
    java_overload :glScissor, 4
    

    def glShadeModel(mode)
        return
    end
    java_overload :glShadeModel, 1
    

    def glStencilFunc(func, ref, mask)
        return
    end
    java_overload :glStencilFunc, 3
    

    def glStencilMask(mask)
        return
    end
    java_overload :glStencilMask, 1
    

    def glStencilOp(fail, zfail, zpass)
        return
    end
    java_overload :glStencilOp, 3
    

    def glTexCoordPointer(size, type, stride, pointer)
        return
    end
    java_overload :glTexCoordPointer, 4
    

    def glTexEnvf(target, pname, param)
        return
    end
    java_overload :glTexEnvf, 3
    

    def glTexEnvfv_j4(target, pname, params, offset)
        return
    end
    

    def glTexEnvfv_j3(target, pname, params)
        return
    end

    def glTexEnvfv(*java_overload_args)
        return glTexEnvfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glTexEnvfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glTexEnvfv takes #{java_overload_args.length} arguments"
    end
    

    def glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
        return
    end
    java_overload :glTexImage2D, 9
    

    def glTexParameterf(target, pname, param)
        return
    end
    java_overload :glTexParameterf, 3
    

    def glTexParameteri(target, pname, param)
        return
    end
    java_overload :glTexParameteri, 3
    

    def glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
        return
    end
    java_overload :glTexSubImage2D, 9
    

    def glTranslatef(x, y, z)
        return
    end
    java_overload :glTranslatef, 3
    

    def glVertexPointer(size, type, stride, pointer)
        return
    end
    java_overload :glVertexPointer, 4
    

    def glViewport(x, y, width, height)
        return
    end
    java_overload :glViewport, 4
    

    def glBegin(i)
        return
    end
    java_overload :glBegin, 1
    

    def glEnd()
        return
    end
    java_overload :glEnd, 0
    

    def glVertex3f(f, f2, f3)
        return
    end
    java_overload :glVertex3f, 3
    

    def glPolygonMode(i, i1)
        return
    end
    java_overload :glPolygonMode, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GL10, NullGL10.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullGL10"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GL10].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    NullGL10.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end


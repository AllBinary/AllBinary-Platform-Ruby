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
require "javax/microedition/khronos/opengles/GL10"

module ::Org; module Allbinary; module Opengles

#JOGLEToKhronosGL10
class JOGL10
    include ::Javax::Microedition::Khronos::Opengles::GL10
    attr_accessor :RED, :GREEN, :BLUE, :ALPHA, :PNAME, :_PNAME, :PARAM, :PARAMS, :LIGHT, :FACE, :TARGET, :gl10, :glu, :GL_LINE, :GL_QUAD_STRIP

    def jfields_org_allbinary_opengles_JOGL10
        @RED = "red: "
        @GREEN = " green: "
        @BLUE = " blue: "
        @ALPHA = " alpha: "
        @PNAME = "pname: "
        @_PNAME = " pname: "
        @PARAM = " param: "
        @PARAMS = " params: "
        @LIGHT = "light: "
        @FACE = "face: "
        @TARGET = "target: "
        @gl10 = nil unless instance_variable_defined?(:@gl10)
        @glu = nil unless instance_variable_defined?(:@glu)
        @GL_LINE = nil unless instance_variable_defined?(:@GL_LINE)
        @GL_QUAD_STRIP = nil unless instance_variable_defined?(:@GL_QUAD_STRIP)
    end
    

    def initialize(gl, gl2)
        jfields_org_allbinary_opengles_JOGL10
        @gl10 = gl2
        @glu = ::Com::Jogamp::Opengl::Glu::GLU.createGLU(@gl10)
        @GL_LINE = ::Com::Jogamp::Opengl::GL2::GL_LINE
        @GL_QUAD_STRIP = ::Com::Jogamp::Opengl::GL2::GL_QUAD_STRIP
    end
    

    def getJOGLGL()
        return @gl10
    end
    java_overload :getJOGLGL, 0
    

    def glActiveTexture(texture)
        @gl10.glActiveTexture(texture)
    end
    java_overload :glActiveTexture, 1
    

    def glAlphaFunc(func, ref)
        @gl10.glAlphaFunc(func, ref)
    end
    java_overload :glAlphaFunc, 2
    

    def glBindTexture(target, texture)
        @gl10.glBindTexture(target, texture)
    end
    java_overload :glBindTexture, 2
    

    def glBlendFunc(sfactor, dfactor)
        @gl10.glBlendFunc(sfactor, dfactor)
    end
    java_overload :glBlendFunc, 2
    

    def glClear(mask)
        @gl10.glClear(mask)
    end
    java_overload :glClear, 1
    

    def glClearColor(red, green, blue, alpha)
        @gl10.glClearColor(red, green, blue, alpha)
    end
    java_overload :glClearColor, 4
    

    def glClearDepthf(depth)
        @gl10.glClearDepthf(depth)
    end
    java_overload :glClearDepthf, 1
    

    def glClearStencil(s)
        @gl10.glClearStencil(s)
    end
    java_overload :glClearStencil, 1
    

    def glClientActiveTexture(texture)
        @gl10.glClientActiveTexture(texture)
    end
    java_overload :glClientActiveTexture, 1
    

    def glColor4f(red, green, blue, alpha)
        @gl10.glColor4f(red, green, blue, alpha)
    end
    java_overload :glColor4f, 4
    

    def glColorMask(red, green, blue, alpha)
        @gl10.glColorMask(red, green, blue, alpha)
    end
    java_overload :glColorMask, 4
    

    def glColorPointer(size, type, stride, pointer)
        @gl10.glColorPointer(size, type, stride, pointer)
    end
    java_overload :glColorPointer, 4
    

    def glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
        @gl10.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
    end
    java_overload :glCompressedTexImage2D, 8
    

    def glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
        @gl10.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
    end
    java_overload :glCompressedTexSubImage2D, 9
    

    def glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
        @gl10.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
    end
    java_overload :glCopyTexImage2D, 8
    

    def glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
        @gl10.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
    end
    java_overload :glCopyTexSubImage2D, 8
    

    def glCullFace(mode)
        @gl10.glCullFace(mode)
    end
    java_overload :glCullFace, 1
    

    def glDeleteTextures_j3(n, textures, offset)
        @gl10.glDeleteTextures(n, textures, offset)
    end
    

    def glDeleteTextures_j2(n, textures)
        @gl10.glDeleteTextures(n, textures)
    end

    def glDeleteTextures(*java_overload_args)
        return glDeleteTextures_j3(*java_overload_args) if java_overload_args.length == 3
        return glDeleteTextures_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glDeleteTextures takes #{java_overload_args.length} arguments"
    end
    

    def glDepthFunc(func)
        @gl10.glDepthFunc(func)
    end
    java_overload :glDepthFunc, 1
    

    def glDepthMask(flag)
        @gl10.glDepthMask(flag)
    end
    java_overload :glDepthMask, 1
    

    def glDepthRangef(zNear, zFar)
        @gl10.glDepthRangef(zNear, zFar)
    end
    java_overload :glDepthRangef, 2
    

    def glDisable(cap)
        @gl10.glDisable(cap)
    end
    java_overload :glDisable, 1
    

    def glDisableClientState(array)
        @gl10.glDisableClientState(array)
    end
    java_overload :glDisableClientState, 1
    

    def glDrawArrays(mode, first, count)
        @gl10.glDrawArrays(mode, first, count)
    end
    java_overload :glDrawArrays, 3
    

    def glDrawElements(mode, count, type, indices)
        @gl10.glDrawElements(mode, count, type, indices)
    end
    java_overload :glDrawElements, 4
    

    def glEnable(cap)
        @gl10.glEnable(cap)
    end
    java_overload :glEnable, 1
    

    def glEnableClientState(array)
        @gl10.glEnableClientState(array)
    end
    java_overload :glEnableClientState, 1
    

    def glFinish()
        @gl10.glFinish()
    end
    java_overload :glFinish, 0
    

    def glFlush()
        @gl10.glFlush()
    end
    java_overload :glFlush, 0
    

    def glFogf(pname, param)
        @gl10.glFogf(pname, param)
    end
    java_overload :glFogf, 2
    

    def glFogfv_j3(pname, params, offset)
        @gl10.glFogfv(pname, params, offset)
    end
    

    def glFogfv_j2(pname, params)
        @gl10.glFogfv(pname, params)
    end

    def glFogfv(*java_overload_args)
        return glFogfv_j3(*java_overload_args) if java_overload_args.length == 3
        return glFogfv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glFogfv takes #{java_overload_args.length} arguments"
    end
    

    def glFrontFace(mode)
        @gl10.glFrontFace(mode)
    end
    java_overload :glFrontFace, 1
    

    def glFrustumf(left, right, bottom, top, zNear, zFar)
        @gl10.glFrustumf(left, right, bottom, top, zNear, zFar)
    end
    java_overload :glFrustumf, 6
    

    def glGenTextures_j3(n, textures, offset)
        @gl10.glGenTextures(n, textures, offset)
    end
    

    def glGenTextures_j2(n, textures)
        @gl10.glGenTextures(n, textures)
    end

    def glGenTextures(*java_overload_args)
        return glGenTextures_j3(*java_overload_args) if java_overload_args.length == 3
        return glGenTextures_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glGenTextures takes #{java_overload_args.length} arguments"
    end
    

    def glGetError()
        return @gl10.glGetError()
    end
    java_overload :glGetError, 0
    

    def glGetIntegerv_j3(pname, params, offset)
        @gl10.glGetIntegerv(pname, params, offset)
    end
    

    def glGetIntegerv_j2(pname, params)
        @gl10.glGetIntegerv(pname, params)
    end

    def glGetIntegerv(*java_overload_args)
        return glGetIntegerv_j3(*java_overload_args) if java_overload_args.length == 3
        return glGetIntegerv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glGetIntegerv takes #{java_overload_args.length} arguments"
    end
    

    def glGetString(name)
        return @gl10.glGetString(name)
    end
    java_overload :glGetString, 1
    

    def glHint(target, mode)
        @gl10.glHint(target, mode)
    end
    java_overload :glHint, 2
    

    def glLightModelf(pname, param)
        @gl10.glLightModelf(pname, param)
    end
    java_overload :glLightModelf, 2
    

    def glLightModelfv_j3(pname, params, offset)
        @gl10.glLightModelfv(pname, params, offset)
    end
    

    def glLightModelfv_j2(pname, params)
        @gl10.glLightModelfv(pname, params)
    end

    def glLightModelfv(*java_overload_args)
        return glLightModelfv_j3(*java_overload_args) if java_overload_args.length == 3
        return glLightModelfv_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method glLightModelfv takes #{java_overload_args.length} arguments"
    end
    

    def glLightf(light, pname, param)
        @gl10.glLightf(light, pname, param)
    end
    java_overload :glLightf, 3
    

    def glLightfv_j4(light, pname, params, offset)
        @gl10.glLightfv(light, pname, params, offset)
    end
    

    def glLightfv_j3(light, pname, params)
        @gl10.glLightfv(light, pname, params)
    end

    def glLightfv(*java_overload_args)
        return glLightfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glLightfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glLightfv takes #{java_overload_args.length} arguments"
    end
    

    def glLineWidth(width)
        @gl10.glLineWidth(width)
    end
    java_overload :glLineWidth, 1
    

    def glLoadIdentity()
        @gl10.glLoadIdentity()
    end
    java_overload :glLoadIdentity, 0
    

    def glLoadMatrixf_j2(m, offset)
        @gl10.glLoadMatrixf(m, offset)
    end
    

    def glLoadMatrixf_j1(m)
        @gl10.glLoadMatrixf(m)
    end

    def glLoadMatrixf(*java_overload_args)
        return glLoadMatrixf_j2(*java_overload_args) if java_overload_args.length == 2
        return glLoadMatrixf_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glLoadMatrixf takes #{java_overload_args.length} arguments"
    end
    

    def glLogicOp(opcode)
        @gl10.glLogicOp(opcode)
    end
    java_overload :glLogicOp, 1
    

    def glMaterialf(face, pname, param)
        @gl10.glMaterialf(face, pname, param)
    end
    java_overload :glMaterialf, 3
    

    def glMaterialfv_j4(face, pname, params, offset)
        @gl10.glMaterialfv(face, pname, params, offset)
    end
    

    def glMaterialfv_j3(face, pname, params)
        @gl10.glMaterialfv(face, pname, params)
    end

    def glMaterialfv(*java_overload_args)
        return glMaterialfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glMaterialfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glMaterialfv takes #{java_overload_args.length} arguments"
    end
    

    def glMatrixMode(mode)
        @gl10.glMatrixMode(mode)
    end
    java_overload :glMatrixMode, 1
    

    def glMultMatrixf_j2(m, offset)
        @gl10.glMultMatrixf(m, offset)
    end
    

    def glMultMatrixf_j1(m)
        @gl10.glMultMatrixf(m)
    end

    def glMultMatrixf(*java_overload_args)
        return glMultMatrixf_j2(*java_overload_args) if java_overload_args.length == 2
        return glMultMatrixf_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glMultMatrixf takes #{java_overload_args.length} arguments"
    end
    

    def glMultiTexCoord4f(target, s, t, r, q)
        @gl10.glMultiTexCoord4f(target, s, t, r, q)
    end
    java_overload :glMultiTexCoord4f, 5
    

    def glNormal3f(nx, ny, nz)
        @gl10.glNormal3f(nx, ny, nz)
    end
    java_overload :glNormal3f, 3
    

    def glNormalPointer(type, stride, pointer)
        @gl10.glNormalPointer(type, stride, pointer)
    end
    java_overload :glNormalPointer, 3
    

    def glOrthof(left, right, bottom, top, zNear, zFar)
        @gl10.glOrthof(left, right, bottom, top, zNear, zFar)
    end
    java_overload :glOrthof, 6
    

    def glPixelStorei(pname, param)
        @gl10.glPixelStorei(pname, param)
    end
    java_overload :glPixelStorei, 2
    

    def glPointSize(size)
        @gl10.glPointSize(size)
    end
    java_overload :glPointSize, 1
    

    def glPolygonOffset(factor, units)
        @gl10.glPolygonOffset(factor, units)
    end
    java_overload :glPolygonOffset, 2
    

    def glPopMatrix()
        @gl10.glPopMatrix()
    end
    java_overload :glPopMatrix, 0
    

    def glPushMatrix()
        @gl10.glPushMatrix()
    end
    java_overload :glPushMatrix, 0
    

    def glReadPixels(x, y, width, height, format, type, pixels)
        @gl10.glReadPixels(x, y, width, height, format, type, pixels)
    end
    java_overload :glReadPixels, 7
    

    def glRotatef(angle, x, y, z)
        @gl10.glRotatef(angle, x, y, z)
    end
    java_overload :glRotatef, 4
    

    def glRotatex(angle, x, y, z)
        @gl10.glRotatef(angle, x, y, z)
    end
    java_overload :glRotatex, 4
    

    def glSampleCoverage(value, invert)
        @gl10.glSampleCoverage(value, invert)
    end
    java_overload :glSampleCoverage, 2
    

    def glScalef(x, y, z)
        @gl10.glScalef(x, y, z)
    end
    java_overload :glScalef, 3
    

    def glScalex(x, y, z)
        @gl10.glScalef(x, y, z)
    end
    java_overload :glScalex, 3
    

    def glScissor(x, y, width, height)
        @gl10.glScissor(x, y, width, height)
    end
    java_overload :glScissor, 4
    

    def glShadeModel(mode)
        @gl10.glShadeModel(mode)
    end
    java_overload :glShadeModel, 1
    

    def glStencilFunc(func, ref, mask)
        @gl10.glStencilFunc(func, ref, mask)
    end
    java_overload :glStencilFunc, 3
    

    def glStencilMask(mask)
        @gl10.glStencilMask(mask)
    end
    java_overload :glStencilMask, 1
    

    def glStencilOp(fail, zfail, zpass)
        @gl10.glStencilOp(fail, zfail, zpass)
    end
    java_overload :glStencilOp, 3
    

    def glTexCoordPointer(size, type, stride, pointer)
        @gl10.glTexCoordPointer(size, type, stride, pointer)
    end
    java_overload :glTexCoordPointer, 4
    

    def glTexEnvf(target, pname, param)
        @gl10.glTexEnvf(target, pname, param)
    end
    java_overload :glTexEnvf, 3
    

    def glTexEnvfv_j4(target, pname, params, offset)
        @gl10.glTexEnvfv(target, pname, params, offset)
    end
    

    def glTexEnvfv_j3(target, pname, params)
        @gl10.glTexEnvfv(target, pname, params)
    end

    def glTexEnvfv(*java_overload_args)
        return glTexEnvfv_j4(*java_overload_args) if java_overload_args.length == 4
        return glTexEnvfv_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method glTexEnvfv takes #{java_overload_args.length} arguments"
    end
    

    def glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
        @gl10.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
    end
    java_overload :glTexImage2D, 9
    

    def glTexParameterf(target, pname, param)
        @gl10.glTexParameterf(target, pname, param)
    end
    java_overload :glTexParameterf, 3
    

    def glTexParameteri(target, pname, param)
        @gl10.glTexParameteri(target, pname, param)
    end
    java_overload :glTexParameteri, 3
    

    def glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
        @gl10.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
    end
    java_overload :glTexSubImage2D, 9
    

    def glTranslatef(x, y, z)
        @gl10.glTranslatef(x, y, z)
    end
    java_overload :glTranslatef, 3
    

    def glVertexPointer(size, type, stride, pointer)
        @gl10.glVertexPointer(size, type, stride, pointer)
    end
    java_overload :glVertexPointer, 4
    

    def glViewport(x, y, width, height)
        @gl10.glViewport(x, y, width, height)
    end
    java_overload :glViewport, 4
    

    def glBegin(i)
        @gl10.glBegin(i)
    end
    java_overload :glBegin, 1
    

    def glEnd()
        @gl10.glEnd()
    end
    java_overload :glEnd, 0
    

    def glVertex3f(f, f2, f3)
        @gl10.glVertex3f(f, f2, f3)
    end
    java_overload :glVertex3f, 3
    

    def glPolygonMode(i, i1)
        @gl10.glPolygonMode(i, i1)
    end
    java_overload :glPolygonMode, 2
end

module ::Com; module Jogamp; module Opengl; module Glu; autoload :GLU, "com/jogamp/opengl/glu/GLU" unless const_defined?(:GLU, false); end; end; end; end
module ::Com; module Jogamp; module Opengl; autoload :GL, "com/jogamp/opengl/GL" unless const_defined?(:GL, false); end; end; end
module ::Com; module Jogamp; module Opengl; autoload :GL2, "com/jogamp/opengl/GL2" unless const_defined?(:GL2, false); end; end; end

end; end; end


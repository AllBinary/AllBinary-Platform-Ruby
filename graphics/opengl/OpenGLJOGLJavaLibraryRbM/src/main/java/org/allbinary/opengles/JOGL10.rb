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


#JOGLEToKhronosGL10
class JOGL10
    include GL10
    attr_accessor :RED, :GREEN, :BLUE, :ALPHA, :PNAME, :_PNAME, :PARAM, :PARAMS, :LIGHT, :FACE, :TARGET, :gl10, :glu, :GL_LINE, :GL_QUAD_STRIP

    def initialize_fields
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
        @gl10 = nil
        @glu = nil
        @GL_LINE = nil
        @GL_QUAD_STRIP = nil
    end
    

    def initialize(gl, gl2)
        initialize_fields
        @gl10 = gl2
        @glu = GLU.createGLU(@gl10)
        @GL_LINE = com.jogamp.opengl.GL2.GL_LINE
        @GL_QUAD_STRIP = com.jogamp.opengl.GL2.GL_QUAD_STRIP
    end
    

    def getJOGLGL()
        return @gl10
    end
    

    def glActiveTexture(texture)
        @gl10.glActiveTexture(texture)
    end
    

    def glAlphaFunc(func, ref)
        @gl10.glAlphaFunc(func, ref)
    end
    

    def glBindTexture(target, texture)
        @gl10.glBindTexture(target, texture)
    end
    

    def glBlendFunc(sfactor, dfactor)
        @gl10.glBlendFunc(sfactor, dfactor)
    end
    

    def glClear(mask)
        @gl10.glClear(mask)
    end
    

    def glClearColor(red, green, blue, alpha)
        @gl10.glClearColor(red, green, blue, alpha)
    end
    

    def glClearDepthf(depth)
        @gl10.glClearDepthf(depth)
    end
    

    def glClearStencil(s)
        @gl10.glClearStencil(s)
    end
    

    def glClientActiveTexture(texture)
        @gl10.glClientActiveTexture(texture)
    end
    

    def glColor4f(red, green, blue, alpha)
        @gl10.glColor4f(red, green, blue, alpha)
    end
    

    def glColorMask(red, green, blue, alpha)
        @gl10.glColorMask(red, green, blue, alpha)
    end
    

    def glColorPointer(size, type, stride, pointer)
        @gl10.glColorPointer(size, type, stride, pointer)
    end
    

    def glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
        @gl10.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
    end
    

    def glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
        @gl10.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
    end
    

    def glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
        @gl10.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
    end
    

    def glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
        @gl10.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
    end
    

    def glCullFace(mode)
        @gl10.glCullFace(mode)
    end
    

    def glDeleteTextures(n, textures, offset)
        @gl10.glDeleteTextures(n, textures, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDeleteTextures(n, textures)
        @gl10.glDeleteTextures(n, textures)
    end
    

    def glDepthFunc(func)
        @gl10.glDepthFunc(func)
    end
    

    def glDepthMask(flag)
        @gl10.glDepthMask(flag)
    end
    

    def glDepthRangef(zNear, zFar)
        @gl10.glDepthRangef(zNear, zFar)
    end
    

    def glDisable(cap)
        @gl10.glDisable(cap)
    end
    

    def glDisableClientState(array)
        @gl10.glDisableClientState(array)
    end
    

    def glDrawArrays(mode, first, count)
        @gl10.glDrawArrays(mode, first, count)
    end
    

    def glDrawElements(mode, count, type, indices)
        @gl10.glDrawElements(mode, count, type, indices)
    end
    

    def glEnable(cap)
        @gl10.glEnable(cap)
    end
    

    def glEnableClientState(array)
        @gl10.glEnableClientState(array)
    end
    

    def glFinish()
        @gl10.glFinish()
    end
    

    def glFlush()
        @gl10.glFlush()
    end
    

    def glFogf(pname, param)
        @gl10.glFogf(pname, param)
    end
    

    def glFogfv(pname, params, offset)
        @gl10.glFogfv(pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glFogfv(pname, params)
        @gl10.glFogfv(pname, params)
    end
    

    def glFrontFace(mode)
        @gl10.glFrontFace(mode)
    end
    

    def glFrustumf(left, right, bottom, top, zNear, zFar)
        @gl10.glFrustumf(left, right, bottom, top, zNear, zFar)
    end
    

    def glGenTextures(n, textures, offset)
        @gl10.glGenTextures(n, textures, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGenTextures(n, textures)
        @gl10.glGenTextures(n, textures)
    end
    

    def glGetError()
        return @gl10.glGetError()
    end
    

    def glGetIntegerv(pname, params, offset)
        @gl10.glGetIntegerv(pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetIntegerv(pname, params)
        @gl10.glGetIntegerv(pname, params)
    end
    

    def glGetString(name)
        return @gl10.glGetString(name)
    end
    

    def glHint(target, mode)
        @gl10.glHint(target, mode)
    end
    

    def glLightModelf(pname, param)
        @gl10.glLightModelf(pname, param)
    end
    

    def glLightModelfv(pname, params, offset)
        @gl10.glLightModelfv(pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightModelfv(pname, params)
        @gl10.glLightModelfv(pname, params)
    end
    

    def glLightf(light, pname, param)
        @gl10.glLightf(light, pname, param)
    end
    

    def glLightfv(light, pname, params, offset)
        @gl10.glLightfv(light, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightfv(light, pname, params)
        @gl10.glLightfv(light, pname, params)
    end
    

    def glLineWidth(width)
        @gl10.glLineWidth(width)
    end
    

    def glLoadIdentity()
        @gl10.glLoadIdentity()
    end
    

    def glLoadMatrixf(m, offset)
        @gl10.glLoadMatrixf(m, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLoadMatrixf(m)
        @gl10.glLoadMatrixf(m)
    end
    

    def glLogicOp(opcode)
        @gl10.glLogicOp(opcode)
    end
    

    def glMaterialf(face, pname, param)
        @gl10.glMaterialf(face, pname, param)
    end
    

    def glMaterialfv(face, pname, params, offset)
        @gl10.glMaterialfv(face, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMaterialfv(face, pname, params)
        @gl10.glMaterialfv(face, pname, params)
    end
    

    def glMatrixMode(mode)
        @gl10.glMatrixMode(mode)
    end
    

    def glMultMatrixf(m, offset)
        @gl10.glMultMatrixf(m, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMultMatrixf(m)
        @gl10.glMultMatrixf(m)
    end
    

    def glMultiTexCoord4f(target, s, t, r, q)
        @gl10.glMultiTexCoord4f(target, s, t, r, q)
    end
    

    def glNormal3f(nx, ny, nz)
        @gl10.glNormal3f(nx, ny, nz)
    end
    

    def glNormalPointer(type, stride, pointer)
        @gl10.glNormalPointer(type, stride, pointer)
    end
    

    def glOrthof(left, right, bottom, top, zNear, zFar)
        @gl10.glOrthof(left, right, bottom, top, zNear, zFar)
    end
    

    def glPixelStorei(pname, param)
        @gl10.glPixelStorei(pname, param)
    end
    

    def glPointSize(size)
        @gl10.glPointSize(size)
    end
    

    def glPolygonOffset(factor, units)
        @gl10.glPolygonOffset(factor, units)
    end
    

    def glPopMatrix()
        @gl10.glPopMatrix()
    end
    

    def glPushMatrix()
        @gl10.glPushMatrix()
    end
    

    def glReadPixels(x, y, width, height, format, type, pixels)
        @gl10.glReadPixels(x, y, width, height, format, type, pixels)
    end
    

    def glRotatef(angle, x, y, z)
        @gl10.glRotatef(angle, x, y, z)
    end
    

    def glRotatex(angle, x, y, z)
        @gl10.glRotatef(angle, x, y, z)
    end
    

    def glSampleCoverage(value, invert)
        @gl10.glSampleCoverage(value, invert)
    end
    

    def glScalef(x, y, z)
        @gl10.glScalef(x, y, z)
    end
    

    def glScalex(x, y, z)
        @gl10.glScalef(x, y, z)
    end
    

    def glScissor(x, y, width, height)
        @gl10.glScissor(x, y, width, height)
    end
    

    def glShadeModel(mode)
        @gl10.glShadeModel(mode)
    end
    

    def glStencilFunc(func, ref, mask)
        @gl10.glStencilFunc(func, ref, mask)
    end
    

    def glStencilMask(mask)
        @gl10.glStencilMask(mask)
    end
    

    def glStencilOp(fail, zfail, zpass)
        @gl10.glStencilOp(fail, zfail, zpass)
    end
    

    def glTexCoordPointer(size, type, stride, pointer)
        @gl10.glTexCoordPointer(size, type, stride, pointer)
    end
    

    def glTexEnvf(target, pname, param)
        @gl10.glTexEnvf(target, pname, param)
    end
    

    def glTexEnvfv(target, pname, params, offset)
        @gl10.glTexEnvfv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnvfv(target, pname, params)
        @gl10.glTexEnvfv(target, pname, params)
    end
    

    def glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
        @gl10.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
    end
    

    def glTexParameterf(target, pname, param)
        @gl10.glTexParameterf(target, pname, param)
    end
    

    def glTexParameteri(target, pname, param)
        @gl10.glTexParameteri(target, pname, param)
    end
    

    def glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
        @gl10.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
    end
    

    def glTranslatef(x, y, z)
        @gl10.glTranslatef(x, y, z)
    end
    

    def glVertexPointer(size, type, stride, pointer)
        @gl10.glVertexPointer(size, type, stride, pointer)
    end
    

    def glViewport(x, y, width, height)
        @gl10.glViewport(x, y, width, height)
    end
    

    def glBegin(i)
        @gl10.glBegin(i)
    end
    

    def glEnd()
        @gl10.glEnd()
    end
    

    def glVertex3f(f, f2, f3)
        @gl10.glVertex3f(f, f2, f3)
    end
    

    def glPolygonMode(i, i1)
        @gl10.glPolygonMode(i, i1)
    end
end

require "com/jogamp/opengl/glu/GLU"


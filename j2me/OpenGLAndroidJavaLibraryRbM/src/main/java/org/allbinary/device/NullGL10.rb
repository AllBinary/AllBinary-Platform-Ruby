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

# require "javax/microedition/khronos/opengles/GL10"
# require "java/nio/Buffer"
# require "java/nio/FloatBuffer"
# require "java/nio/IntBuffer"

class NullGL10
    include GL10
    

    def glActiveTexture(texture)
        return
    end
    

    def glAlphaFunc(func, ref)
        return
    end
    

    def glAlphaFuncx(func, ref)
    end
    

    def glBindTexture(target, texture)
        return
    end
    

    def glBlendFunc(sfactor, dfactor)
        return
    end
    

    def glClear(mask)
        return
    end
    

    def glClearColor(red, green, blue, alpha)
        return
    end
    

    def glClearColorx(red, green, blue, alpha)
    end
    

    def glClearDepthf(depth)
        return
    end
    

    def glClearDepthx(depth)
    end
    

    def glClearStencil(s)
        return
    end
    

    def glClientActiveTexture(texture)
        return
    end
    

    def glColor4f(red, green, blue, alpha)
        return
    end
    

    def glColor4x(red, green, blue, alpha)
    end
    

    def glColorMask(red, green, blue, alpha)
        return
    end
    

    def glColorPointer(size, type, stride, pointer)
        return
    end
    

    def glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
        return
    end
    

    def glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
        return
    end
    

    def glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
        return
    end
    

    def glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
        return
    end
    

    def glCullFace(mode)
        return
    end
    

    def glDeleteTextures(n, textures, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDeleteTextures(n, textures)
        return
    end
    

    def glDepthFunc(func)
        return
    end
    

    def glDepthMask(flag)
        return
    end
    

    def glDepthRangef(zNear, zFar)
        return
    end
    

    def glDepthRangex(zNear, zFar)
    end
    

    def glDisable(cap)
        return
    end
    

    def glDisableClientState(array)
        return
    end
    

    def glDrawArrays(mode, first, count)
        return
    end
    

    def glDrawElements(mode, count, type, indices)
        return
    end
    

    def glEnable(cap)
        return
    end
    

    def glEnableClientState(array)
        return
    end
    

    def glFinish()
        return
    end
    

    def glFlush()
        return
    end
    

    def glFogf(pname, param)
        return
    end
    

    def glFogfv(pname, params, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glFogfv(pname, params)
        return
    end
    

    def glFogx(pname, param)
    end
    

    def glFogxv(pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glFogxv(pname, params)
    end
    

    def glFrontFace(mode)
        return
    end
    

    def glFrustumf(left, right, bottom, top, zNear, zFar)
        return
    end
    

    def glFrustumx(left, right, bottom, top, zNear, zFar)
    end
    

    def glGenTextures(n, textures, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGenTextures(n, textures)
        return
    end
    

    def glGetError()
        return 0
    end
    

    def glGetIntegerv(pname, params, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetIntegerv(pname, params)
        return
    end
    

    def glGetString(name)
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def glHint(target, mode)
        return
    end
    

    def glLightModelf(pname, param)
        return
    end
    

    def glLightModelfv(pname, params, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightModelfv(pname, params)
        return
    end
    

    def glLightModelx(pname, param)
    end
    

    def glLightModelxv(pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightModelxv(pname, params)
    end
    

    def glLightf(light, pname, param)
        return
    end
    

    def glLightfv(light, pname, params, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightfv(light, pname, params)
        return
    end
    

    def glLightx(light, pname, param)
    end
    

    def glLightxv(light, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightxv(light, pname, params)
    end
    

    def glLineWidth(width)
        return
    end
    

    def glLineWidthx(width)
    end
    

    def glLoadIdentity()
        return
    end
    

    def glLoadMatrixf(m, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLoadMatrixf(m)
        return
    end
    

    def glLoadMatrixx(m, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLoadMatrixx(m)
    end
    

    def glLogicOp(opcode)
        return
    end
    

    def glMaterialf(face, pname, param)
        return
    end
    

    def glMaterialfv(face, pname, params, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMaterialfv(face, pname, params)
        return
    end
    

    def glMaterialx(face, pname, param)
    end
    

    def glMaterialxv(face, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMaterialxv(face, pname, params)
    end
    

    def glMatrixMode(mode)
        return
    end
    

    def glMultMatrixf(m, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMultMatrixf(m)
        return
    end
    

    def glMultMatrixx(m, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMultMatrixx(m)
    end
    

    def glMultiTexCoord4f(target, s, t, r, q)
        return
    end
    

    def glMultiTexCoord4x(target, s, t, r, q)
    end
    

    def glNormal3f(nx, ny, nz)
        return
    end
    

    def glNormal3x(nx, ny, nz)
    end
    

    def glNormalPointer(type, stride, pointer)
        return
    end
    

    def glOrthof(left, right, bottom, top, zNear, zFar)
        return
    end
    

    def glOrthox(left, right, bottom, top, zNear, zFar)
    end
    

    def glPixelStorei(pname, param)
        return
    end
    

    def glPointSize(size)
        return
    end
    

    def glPointSizex(size)
    end
    

    def glPolygonOffset(factor, units)
        return
    end
    

    def glPolygonOffsetx(factor, units)
    end
    

    def glPopMatrix()
        return
    end
    

    def glPushMatrix()
        return
    end
    

    def glReadPixels(x, y, width, height, format, type, pixels)
        return
    end
    

    def glRotatef(angle, x, y, z)
        return
    end
    

    def glRotatex(angle, x, y, z)
        return
    end
    

    def glSampleCoverage(value, invert)
        return
    end
    

    def glSampleCoveragex(value, invert)
    end
    

    def glScalef(x, y, z)
        return
    end
    

    def glScalex(x, y, z)
        return
    end
    

    def glScissor(x, y, width, height)
        return
    end
    

    def glShadeModel(mode)
        return
    end
    

    def glStencilFunc(func, ref, mask)
        return
    end
    

    def glStencilMask(mask)
        return
    end
    

    def glStencilOp(fail, zfail, zpass)
        return
    end
    

    def glTexCoordPointer(size, type, stride, pointer)
        return
    end
    

    def glTexEnvf(target, pname, param)
        return
    end
    

    def glTexEnvfv(target, pname, params, offset)
        return
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnvfv(target, pname, params)
        return
    end
    

    def glTexEnvx(target, pname, param)
    end
    

    def glTexEnvxv(target, pname, params, offset)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnvxv(target, pname, params)
    end
    

    def glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
        return
    end
    

    def glTexParameterf(target, pname, param)
        return
    end
    

    def glTexParameterx(target, pname, param)
    end
    

    def glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
        return
    end
    

    def glTranslatef(x, y, z)
        return
    end
    

    def glTranslatex(x, y, z)
    end
    

    def glVertexPointer(size, type, stride, pointer)
        return
    end
    

    def glViewport(x, y, width, height)
        return
    end
end

require "org/allbinary/logic/string/StringUtil"

class NullGL10
    NULL_GL10 = NullGL10.new()
end


# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.khronos.opengles

# require "java/nio/Buffer"
# require "java/nio/FloatBuffer"
# require "java/nio/IntBuffer"
require "javax/microedition/khronos/opengles/GL"

module GL10
    include GL
    

    def glActiveTexture(texture)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glAlphaFunc(func, ref)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glBindTexture(target, texture)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glBlendFunc(sfactor, dfactor)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glClear(mask)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glClearColor(red, green, blue, alpha)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glClearDepthf(depth)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glClearStencil(s)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glClientActiveTexture(texture)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glColor4f(red, green, blue, alpha)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glColorMask(red, green, blue, alpha)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glColorPointer(size, type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glCullFace(mode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDeleteTextures(n, textures, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDeleteTextures(n, textures)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDepthFunc(func)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDepthMask(flag)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDepthRangef(zNear, zFar)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDisable(cap)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDisableClientState(array)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawArrays(mode, first, count)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawElements(mode, count, type, indices)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glEnable(cap)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glEnableClientState(array)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glFinish()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glFlush()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glFogf(pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glFogfv(pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glFogfv(pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glFrontFace(mode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glFrustumf(left, right, bottom, top, zNear, zFar)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGenTextures(n, textures, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGenTextures(n, textures)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetError()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetIntegerv(pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetIntegerv(pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetString(name)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glHint(target, mode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLightModelf(pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLightModelfv(pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightModelfv(pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLightf(light, pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLightfv(light, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightfv(light, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLineWidth(width)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLoadIdentity()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLoadMatrixf(m, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLoadMatrixf(m)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glLogicOp(opcode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glMaterialf(face, pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glMaterialfv(face, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMaterialfv(face, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glMatrixMode(mode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glMultMatrixf(m, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMultMatrixf(m)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glMultiTexCoord4f(target, s, t, r, q)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glNormal3f(nx, ny, nz)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glNormalPointer(type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glOrthof(left, right, bottom, top, zNear, zFar)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPixelStorei(pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPointSize(size)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPolygonOffset(factor, units)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPopMatrix()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPushMatrix()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glReadPixels(x, y, width, height, format, type, pixels)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glRotatef(angle, x, y, z)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glRotatex(angle, x, y, z)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glSampleCoverage(value, invert)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glScalef(x, y, z)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glScalex(x, y, z)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glScissor(x, y, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glShadeModel(mode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glStencilFunc(func, ref, mask)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glStencilMask(mask)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glStencilOp(fail, zfail, zpass)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexCoordPointer(size, type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexEnvf(target, pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexEnvfv(target, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnvfv(target, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexParameterf(target, pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexParameteri(target, pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTranslatef(x, y, z)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glVertexPointer(size, type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glViewport(x, y, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glBegin(i)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glEnd()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glVertex3f(f, f2, f3)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPolygonMode(i, i1)
        return super if defined?(super)
        raise NotImplementedError
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:GL_ADD, 260)
        const_set(:GL_ALIASED_LINE_WIDTH_RANGE, 33902)
        const_set(:GL_ALIASED_POINT_SIZE_RANGE, 33901)
        const_set(:GL_ALPHA, 6406)
        const_set(:GL_ALPHA_BITS, 3413)
        const_set(:GL_ALPHA_TEST, 3008)
        const_set(:GL_ALWAYS, 519)
        const_set(:GL_AMBIENT, 4608)
        const_set(:GL_AMBIENT_AND_DIFFUSE, 5634)
        const_set(:GL_AND, 5377)
        const_set(:GL_AND_INVERTED, 5380)
        const_set(:GL_AND_REVERSE, 5378)
        const_set(:GL_BACK, 1029)
        const_set(:GL_BLEND, 3042)
        const_set(:GL_BLUE_BITS, 3412)
        const_set(:GL_BYTE, 5120)
        const_set(:GL_CCW, 2305)
        const_set(:GL_CLAMP_TO_EDGE, 33071)
        const_set(:GL_CLEAR, 5376)
        const_set(:GL_COLOR_ARRAY, 32886)
        const_set(:GL_COLOR_BUFFER_BIT, 16384)
        const_set(:GL_COLOR_LOGIC_OP, 3058)
        const_set(:GL_COLOR_MATERIAL, 2903)
        const_set(:GL_COMPRESSED_TEXTURE_FORMATS, 34467)
        const_set(:GL_CONSTANT_ATTENUATION, 4615)
        const_set(:GL_COPY, 5379)
        const_set(:GL_COPY_INVERTED, 5388)
        const_set(:GL_CULL_FACE, 2884)
        const_set(:GL_CW, 2304)
        const_set(:GL_DECAL, 8449)
        const_set(:GL_DECR, 7683)
        const_set(:GL_DEPTH_BITS, 3414)
        const_set(:GL_DEPTH_BUFFER_BIT, 256)
        const_set(:GL_DEPTH_TEST, 2929)
        const_set(:GL_DIFFUSE, 4609)
        const_set(:GL_DITHER, 3024)
        const_set(:GL_DONT_CARE, 4352)
        const_set(:GL_DST_ALPHA, 772)
        const_set(:GL_DST_COLOR, 774)
        const_set(:GL_EMISSION, 5632)
        const_set(:GL_EQUAL, 514)
        const_set(:GL_EQUIV, 5385)
        const_set(:GL_EXP, 2048)
        const_set(:GL_EXP2, 2049)
        const_set(:GL_EXTENSIONS, 7939)
        const_set(:GL_FALSE, 0)
        const_set(:GL_FASTEST, 4353)
        const_set(:GL_FIXED, 5132)
        const_set(:GL_FLAT, 7424)
        const_set(:GL_FLOAT, 5126)
        const_set(:GL_FOG, 2912)
        const_set(:GL_FOG_COLOR, 2918)
        const_set(:GL_FOG_DENSITY, 2914)
        const_set(:GL_FOG_END, 2916)
        const_set(:GL_FOG_HINT, 3156)
        const_set(:GL_FOG_MODE, 2917)
        const_set(:GL_FOG_START, 2915)
        const_set(:GL_FRONT, 1028)
        const_set(:GL_FRONT_AND_BACK, 1032)
        const_set(:GL_GEQUAL, 518)
        const_set(:GL_GREATER, 516)
        const_set(:GL_GREEN_BITS, 3411)
        const_set(:GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES, 35739)
        const_set(:GL_IMPLEMENTATION_COLOR_READ_TYPE_OES, 35738)
        const_set(:GL_INCR, 7682)
        const_set(:GL_INVALID_ENUM, 1280)
        const_set(:GL_INVALID_OPERATION, 1282)
        const_set(:GL_INVALID_VALUE, 1281)
        const_set(:GL_INVERT, 5386)
        const_set(:GL_KEEP, 7680)
        const_set(:GL_LEQUAL, 515)
        const_set(:GL_LESS, 513)
        const_set(:GL_LIGHT_MODEL_AMBIENT, 2899)
        const_set(:GL_LIGHT_MODEL_TWO_SIDE, 2898)
        const_set(:GL_LIGHT0, 16384)
        const_set(:GL_LIGHT1, 16385)
        const_set(:GL_LIGHT2, 16386)
        const_set(:GL_LIGHT3, 16387)
        const_set(:GL_LIGHT4, 16388)
        const_set(:GL_LIGHT5, 16389)
        const_set(:GL_LIGHT6, 16390)
        const_set(:GL_LIGHT7, 16391)
        const_set(:GL_LIGHTING, 2896)
        const_set(:GL_LINE_LOOP, 2)
        const_set(:GL_LINE_SMOOTH, 2848)
        const_set(:GL_LINE_SMOOTH_HINT, 3154)
        const_set(:GL_LINE_STRIP, 3)
        const_set(:GL_LINEAR, 9729)
        const_set(:GL_LINEAR_ATTENUATION, 4616)
        const_set(:GL_LINEAR_MIPMAP_LINEAR, 9987)
        const_set(:GL_LINEAR_MIPMAP_NEAREST, 9985)
        const_set(:GL_LINES, 1)
        const_set(:GL_LUMINANCE, 6409)
        const_set(:GL_LUMINANCE_ALPHA, 6410)
        const_set(:GL_MAX_ELEMENTS_INDICES, 33001)
        const_set(:GL_MAX_ELEMENTS_VERTICES, 33000)
        const_set(:GL_MAX_LIGHTS, 3377)
        const_set(:GL_MAX_MODELVIEW_STACK_DEPTH, 3382)
        const_set(:GL_MAX_PROJECTION_STACK_DEPTH, 3384)
        const_set(:GL_MAX_TEXTURE_SIZE, 3379)
        const_set(:GL_MAX_TEXTURE_STACK_DEPTH, 3385)
        const_set(:GL_MAX_TEXTURE_UNITS, 34018)
        const_set(:GL_MAX_VIEWPORT_DIMS, 3386)
        const_set(:GL_MODELVIEW, 5888)
        const_set(:GL_MODULATE, 8448)
        const_set(:GL_MULTISAMPLE, 32925)
        const_set(:GL_NAND, 5390)
        const_set(:GL_NEAREST, 9728)
        const_set(:GL_NEAREST_MIPMAP_LINEAR, 9986)
        const_set(:GL_NEAREST_MIPMAP_NEAREST, 9984)
        const_set(:GL_NEVER, 512)
        const_set(:GL_NICEST, 4354)
        const_set(:GL_NO_ERROR, 0)
        const_set(:GL_NOOP, 5381)
        const_set(:GL_NOR, 5384)
        const_set(:GL_NORMAL_ARRAY, 32885)
        const_set(:GL_NORMALIZE, 2977)
        const_set(:GL_NOTEQUAL, 517)
        const_set(:GL_NUM_COMPRESSED_TEXTURE_FORMATS, 34466)
        const_set(:GL_ONE, 1)
        const_set(:GL_ONE_MINUS_DST_ALPHA, 773)
        const_set(:GL_ONE_MINUS_DST_COLOR, 775)
        const_set(:GL_ONE_MINUS_SRC_ALPHA, 771)
        const_set(:GL_ONE_MINUS_SRC_COLOR, 769)
        const_set(:GL_OR, 5383)
        const_set(:GL_OR_INVERTED, 5389)
        const_set(:GL_OR_REVERSE, 5387)
        const_set(:GL_OUT_OF_MEMORY, 1285)
        const_set(:GL_PACK_ALIGNMENT, 3333)
        const_set(:GL_PALETTE4_R5_G6_B5_OES, 35730)
        const_set(:GL_PALETTE4_RGB5_A1_OES, 35732)
        const_set(:GL_PALETTE4_RGB8_OES, 35728)
        const_set(:GL_PALETTE4_RGBA4_OES, 35731)
        const_set(:GL_PALETTE4_RGBA8_OES, 35729)
        const_set(:GL_PALETTE8_R5_G6_B5_OES, 35735)
        const_set(:GL_PALETTE8_RGB5_A1_OES, 35737)
        const_set(:GL_PALETTE8_RGB8_OES, 35733)
        const_set(:GL_PALETTE8_RGBA4_OES, 35736)
        const_set(:GL_PALETTE8_RGBA8_OES, 35734)
        const_set(:GL_PERSPECTIVE_CORRECTION_HINT, 3152)
        const_set(:GL_POINT_SMOOTH, 2832)
        const_set(:GL_POINT_SMOOTH_HINT, 3153)
        const_set(:GL_POINTS, 0)
        const_set(:GL_POINT_FADE_THRESHOLD_SIZE, 33064)
        const_set(:GL_POINT_SIZE, 2833)
        const_set(:GL_POLYGON_OFFSET_FILL, 32823)
        const_set(:GL_POLYGON_SMOOTH_HINT, 3155)
        const_set(:GL_POSITION, 4611)
        const_set(:GL_PROJECTION, 5889)
        const_set(:GL_QUADRATIC_ATTENUATION, 4617)
        const_set(:GL_RED_BITS, 3410)
        const_set(:GL_RENDERER, 7937)
        const_set(:GL_REPEAT, 10497)
        const_set(:GL_REPLACE, 7681)
        const_set(:GL_RESCALE_NORMAL, 32826)
        const_set(:GL_RGB, 6407)
        const_set(:GL_RGBA, 6408)
        const_set(:GL_SAMPLE_ALPHA_TO_COVERAGE, 32926)
        const_set(:GL_SAMPLE_ALPHA_TO_ONE, 32927)
        const_set(:GL_SAMPLE_COVERAGE, 32928)
        const_set(:GL_SCISSOR_TEST, 3089)
        const_set(:GL_SET, 5391)
        const_set(:GL_SHININESS, 5633)
        const_set(:GL_SHORT, 5122)
        const_set(:GL_SMOOTH, 7425)
        const_set(:GL_SMOOTH_LINE_WIDTH_RANGE, 2850)
        const_set(:GL_SMOOTH_POINT_SIZE_RANGE, 2834)
        const_set(:GL_SPECULAR, 4610)
        const_set(:GL_SPOT_CUTOFF, 4614)
        const_set(:GL_SPOT_DIRECTION, 4612)
        const_set(:GL_SPOT_EXPONENT, 4613)
        const_set(:GL_SRC_ALPHA, 770)
        const_set(:GL_SRC_ALPHA_SATURATE, 776)
        const_set(:GL_SRC_COLOR, 768)
        const_set(:GL_STACK_OVERFLOW, 1283)
        const_set(:GL_STACK_UNDERFLOW, 1284)
        const_set(:GL_STENCIL_BITS, 3415)
        const_set(:GL_STENCIL_BUFFER_BIT, 1024)
        const_set(:GL_STENCIL_TEST, 2960)
        const_set(:GL_SUBPIXEL_BITS, 3408)
        const_set(:GL_TEXTURE, 5890)
        const_set(:GL_TEXTURE_2D, 3553)
        const_set(:GL_TEXTURE_COORD_ARRAY, 32888)
        const_set(:GL_TEXTURE_ENV, 8960)
        const_set(:GL_TEXTURE_ENV_COLOR, 8705)
        const_set(:GL_TEXTURE_ENV_MODE, 8704)
        const_set(:GL_TEXTURE_MAG_FILTER, 10240)
        const_set(:GL_TEXTURE_MIN_FILTER, 10241)
        const_set(:GL_TEXTURE_WRAP_S, 10242)
        const_set(:GL_TEXTURE_WRAP_T, 10243)
        const_set(:GL_TEXTURE0, 33984)
        const_set(:GL_TEXTURE1, 33985)
        const_set(:GL_TEXTURE2, 33986)
        const_set(:GL_TEXTURE3, 33987)
        const_set(:GL_TEXTURE4, 33988)
        const_set(:GL_TEXTURE5, 33989)
        const_set(:GL_TEXTURE6, 33990)
        const_set(:GL_TEXTURE7, 33991)
        const_set(:GL_TEXTURE8, 33992)
        const_set(:GL_TEXTURE9, 33993)
        const_set(:GL_TEXTURE10, 33994)
        const_set(:GL_TEXTURE11, 33995)
        const_set(:GL_TEXTURE12, 33996)
        const_set(:GL_TEXTURE13, 33997)
        const_set(:GL_TEXTURE14, 33998)
        const_set(:GL_TEXTURE15, 33999)
        const_set(:GL_TEXTURE16, 34000)
        const_set(:GL_TEXTURE17, 34001)
        const_set(:GL_TEXTURE18, 34002)
        const_set(:GL_TEXTURE19, 34003)
        const_set(:GL_TEXTURE20, 34004)
        const_set(:GL_TEXTURE21, 34005)
        const_set(:GL_TEXTURE22, 34006)
        const_set(:GL_TEXTURE23, 34007)
        const_set(:GL_TEXTURE24, 34008)
        const_set(:GL_TEXTURE25, 34009)
        const_set(:GL_TEXTURE26, 34010)
        const_set(:GL_TEXTURE27, 34011)
        const_set(:GL_TEXTURE28, 34012)
        const_set(:GL_TEXTURE29, 34013)
        const_set(:GL_TEXTURE30, 34014)
        const_set(:GL_TEXTURE31, 34015)
        const_set(:GL_TRIANGLE_FAN, 6)
        const_set(:GL_TRIANGLE_STRIP, 5)
        const_set(:GL_TRIANGLES, 4)
        const_set(:GL_TRUE, 1)
        const_set(:GL_UNPACK_ALIGNMENT, 3317)
        const_set(:GL_UNSIGNED_BYTE, 5121)
        const_set(:GL_UNSIGNED_SHORT, 5123)
        const_set(:GL_UNSIGNED_SHORT_4_4_4_4, 32819)
        const_set(:GL_UNSIGNED_SHORT_5_5_5_1, 32820)
        const_set(:GL_UNSIGNED_SHORT_5_6_5, 33635)
        const_set(:GL_VENDOR, 7936)
        const_set(:GL_VERSION, 7938)
        const_set(:GL_VERTEX_ARRAY, 32884)
        const_set(:GL_XOR, 5382)
        const_set(:GL_ZERO, 0)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GL10"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:GL_ADD, :GL_ALIASED_LINE_WIDTH_RANGE, :GL_ALIASED_POINT_SIZE_RANGE, :GL_ALPHA, :GL_ALPHA_BITS, :GL_ALPHA_TEST, :GL_ALWAYS, :GL_AMBIENT, :GL_AMBIENT_AND_DIFFUSE, :GL_AND, :GL_AND_INVERTED, :GL_AND_REVERSE, :GL_BACK, :GL_BLEND, :GL_BLUE_BITS, :GL_BYTE, :GL_CCW, :GL_CLAMP_TO_EDGE, :GL_CLEAR, :GL_COLOR_ARRAY, :GL_COLOR_BUFFER_BIT, :GL_COLOR_LOGIC_OP, :GL_COLOR_MATERIAL, :GL_COMPRESSED_TEXTURE_FORMATS, :GL_CONSTANT_ATTENUATION, :GL_COPY, :GL_COPY_INVERTED, :GL_CULL_FACE, :GL_CW, :GL_DECAL, :GL_DECR, :GL_DEPTH_BITS, :GL_DEPTH_BUFFER_BIT, :GL_DEPTH_TEST, :GL_DIFFUSE, :GL_DITHER, :GL_DONT_CARE, :GL_DST_ALPHA, :GL_DST_COLOR, :GL_EMISSION, :GL_EQUAL, :GL_EQUIV, :GL_EXP, :GL_EXP2, :GL_EXTENSIONS, :GL_FALSE, :GL_FASTEST, :GL_FIXED, :GL_FLAT, :GL_FLOAT, :GL_FOG, :GL_FOG_COLOR, :GL_FOG_DENSITY, :GL_FOG_END, :GL_FOG_HINT, :GL_FOG_MODE, :GL_FOG_START, :GL_FRONT, :GL_FRONT_AND_BACK, :GL_GEQUAL, :GL_GREATER, :GL_GREEN_BITS, :GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES, :GL_IMPLEMENTATION_COLOR_READ_TYPE_OES, :GL_INCR, :GL_INVALID_ENUM, :GL_INVALID_OPERATION, :GL_INVALID_VALUE, :GL_INVERT, :GL_KEEP, :GL_LEQUAL, :GL_LESS, :GL_LIGHT_MODEL_AMBIENT, :GL_LIGHT_MODEL_TWO_SIDE, :GL_LIGHT0, :GL_LIGHT1, :GL_LIGHT2, :GL_LIGHT3, :GL_LIGHT4, :GL_LIGHT5, :GL_LIGHT6, :GL_LIGHT7, :GL_LIGHTING, :GL_LINE_LOOP, :GL_LINE_SMOOTH, :GL_LINE_SMOOTH_HINT, :GL_LINE_STRIP, :GL_LINEAR, :GL_LINEAR_ATTENUATION, :GL_LINEAR_MIPMAP_LINEAR, :GL_LINEAR_MIPMAP_NEAREST, :GL_LINES, :GL_LUMINANCE, :GL_LUMINANCE_ALPHA, :GL_MAX_ELEMENTS_INDICES, :GL_MAX_ELEMENTS_VERTICES, :GL_MAX_LIGHTS, :GL_MAX_MODELVIEW_STACK_DEPTH, :GL_MAX_PROJECTION_STACK_DEPTH, :GL_MAX_TEXTURE_SIZE, :GL_MAX_TEXTURE_STACK_DEPTH, :GL_MAX_TEXTURE_UNITS, :GL_MAX_VIEWPORT_DIMS, :GL_MODELVIEW, :GL_MODULATE, :GL_MULTISAMPLE, :GL_NAND, :GL_NEAREST, :GL_NEAREST_MIPMAP_LINEAR, :GL_NEAREST_MIPMAP_NEAREST, :GL_NEVER, :GL_NICEST, :GL_NO_ERROR, :GL_NOOP, :GL_NOR, :GL_NORMAL_ARRAY, :GL_NORMALIZE, :GL_NOTEQUAL, :GL_NUM_COMPRESSED_TEXTURE_FORMATS, :GL_ONE, :GL_ONE_MINUS_DST_ALPHA, :GL_ONE_MINUS_DST_COLOR, :GL_ONE_MINUS_SRC_ALPHA, :GL_ONE_MINUS_SRC_COLOR, :GL_OR, :GL_OR_INVERTED, :GL_OR_REVERSE, :GL_OUT_OF_MEMORY, :GL_PACK_ALIGNMENT, :GL_PALETTE4_R5_G6_B5_OES, :GL_PALETTE4_RGB5_A1_OES, :GL_PALETTE4_RGB8_OES, :GL_PALETTE4_RGBA4_OES, :GL_PALETTE4_RGBA8_OES, :GL_PALETTE8_R5_G6_B5_OES, :GL_PALETTE8_RGB5_A1_OES, :GL_PALETTE8_RGB8_OES, :GL_PALETTE8_RGBA4_OES, :GL_PALETTE8_RGBA8_OES, :GL_PERSPECTIVE_CORRECTION_HINT, :GL_POINT_SMOOTH, :GL_POINT_SMOOTH_HINT, :GL_POINTS, :GL_POINT_FADE_THRESHOLD_SIZE, :GL_POINT_SIZE, :GL_POLYGON_OFFSET_FILL, :GL_POLYGON_SMOOTH_HINT, :GL_POSITION, :GL_PROJECTION, :GL_QUADRATIC_ATTENUATION, :GL_RED_BITS, :GL_RENDERER, :GL_REPEAT, :GL_REPLACE, :GL_RESCALE_NORMAL, :GL_RGB, :GL_RGBA, :GL_SAMPLE_ALPHA_TO_COVERAGE, :GL_SAMPLE_ALPHA_TO_ONE, :GL_SAMPLE_COVERAGE, :GL_SCISSOR_TEST, :GL_SET, :GL_SHININESS, :GL_SHORT, :GL_SMOOTH, :GL_SMOOTH_LINE_WIDTH_RANGE, :GL_SMOOTH_POINT_SIZE_RANGE, :GL_SPECULAR, :GL_SPOT_CUTOFF, :GL_SPOT_DIRECTION, :GL_SPOT_EXPONENT, :GL_SRC_ALPHA, :GL_SRC_ALPHA_SATURATE, :GL_SRC_COLOR, :GL_STACK_OVERFLOW, :GL_STACK_UNDERFLOW, :GL_STENCIL_BITS, :GL_STENCIL_BUFFER_BIT, :GL_STENCIL_TEST, :GL_SUBPIXEL_BITS, :GL_TEXTURE, :GL_TEXTURE_2D, :GL_TEXTURE_COORD_ARRAY, :GL_TEXTURE_ENV, :GL_TEXTURE_ENV_COLOR, :GL_TEXTURE_ENV_MODE, :GL_TEXTURE_MAG_FILTER, :GL_TEXTURE_MIN_FILTER, :GL_TEXTURE_WRAP_S, :GL_TEXTURE_WRAP_T, :GL_TEXTURE0, :GL_TEXTURE1, :GL_TEXTURE2, :GL_TEXTURE3, :GL_TEXTURE4, :GL_TEXTURE5, :GL_TEXTURE6, :GL_TEXTURE7, :GL_TEXTURE8, :GL_TEXTURE9, :GL_TEXTURE10, :GL_TEXTURE11, :GL_TEXTURE12, :GL_TEXTURE13, :GL_TEXTURE14, :GL_TEXTURE15, :GL_TEXTURE16, :GL_TEXTURE17, :GL_TEXTURE18, :GL_TEXTURE19, :GL_TEXTURE20, :GL_TEXTURE21, :GL_TEXTURE22, :GL_TEXTURE23, :GL_TEXTURE24, :GL_TEXTURE25, :GL_TEXTURE26, :GL_TEXTURE27, :GL_TEXTURE28, :GL_TEXTURE29, :GL_TEXTURE30, :GL_TEXTURE31, :GL_TRIANGLE_FAN, :GL_TRIANGLE_STRIP, :GL_TRIANGLES, :GL_TRUE, :GL_UNPACK_ALIGNMENT, :GL_UNSIGNED_BYTE, :GL_UNSIGNED_SHORT, :GL_UNSIGNED_SHORT_4_4_4_4, :GL_UNSIGNED_SHORT_5_5_5_1, :GL_UNSIGNED_SHORT_5_6_5, :GL_VENDOR, :GL_VERSION, :GL_VERTEX_ARRAY, :GL_XOR, :GL_ZERO].include?(name)
        end
        super
    end
end

begin
    GL10.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


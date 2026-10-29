# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.khronos.opengles

require "javax/microedition/khronos/opengles/GL"

module GL10
    include GL
    

    def glActiveTexture(texture)
        raise NotImplementedError
    end
    

    def glAlphaFunc(func, ref)
        raise NotImplementedError
    end
    

    def glBindTexture(target, texture)
        raise NotImplementedError
    end
    

    def glBlendFunc(sfactor, dfactor)
        raise NotImplementedError
    end
    

    def glClear(mask)
        raise NotImplementedError
    end
    

    def glClearColor(red, green, blue, alpha)
        raise NotImplementedError
    end
    

    def glClearDepthf(depth)
        raise NotImplementedError
    end
    

    def glClearStencil(s)
        raise NotImplementedError
    end
    

    def glClientActiveTexture(texture)
        raise NotImplementedError
    end
    

    def glColor4f(red, green, blue, alpha)
        raise NotImplementedError
    end
    

    def glColorMask(red, green, blue, alpha)
        raise NotImplementedError
    end
    

    def glColorPointer(size, type, stride, pointer)
        raise NotImplementedError
    end
    

    def glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data)
        raise NotImplementedError
    end
    

    def glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data)
        raise NotImplementedError
    end
    

    def glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)
        raise NotImplementedError
    end
    

    def glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)
        raise NotImplementedError
    end
    

    def glCullFace(mode)
        raise NotImplementedError
    end
    

    def glDeleteTextures(n, textures, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDeleteTextures(n, textures)
        raise NotImplementedError
    end
    

    def glDepthFunc(func)
        raise NotImplementedError
    end
    

    def glDepthMask(flag)
        raise NotImplementedError
    end
    

    def glDepthRangef(zNear, zFar)
        raise NotImplementedError
    end
    

    def glDisable(cap)
        raise NotImplementedError
    end
    

    def glDisableClientState(array)
        raise NotImplementedError
    end
    

    def glDrawArrays(mode, first, count)
        raise NotImplementedError
    end
    

    def glDrawElements(mode, count, type, indices)
        raise NotImplementedError
    end
    

    def glEnable(cap)
        raise NotImplementedError
    end
    

    def glEnableClientState(array)
        raise NotImplementedError
    end
    

    def glFinish()
        raise NotImplementedError
    end
    

    def glFlush()
        raise NotImplementedError
    end
    

    def glFogf(pname, param)
        raise NotImplementedError
    end
    

    def glFogfv(pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glFogfv(pname, params)
        raise NotImplementedError
    end
    

    def glFrontFace(mode)
        raise NotImplementedError
    end
    

    def glFrustumf(left, right, bottom, top, zNear, zFar)
        raise NotImplementedError
    end
    

    def glGenTextures(n, textures, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGenTextures(n, textures)
        raise NotImplementedError
    end
    

    def glGetError()
        raise NotImplementedError
    end
    

    def glGetIntegerv(pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetIntegerv(pname, params)
        raise NotImplementedError
    end
    

    def glGetString(name)
        raise NotImplementedError
    end
    

    def glHint(target, mode)
        raise NotImplementedError
    end
    

    def glLightModelf(pname, param)
        raise NotImplementedError
    end
    

    def glLightModelfv(pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightModelfv(pname, params)
        raise NotImplementedError
    end
    

    def glLightf(light, pname, param)
        raise NotImplementedError
    end
    

    def glLightfv(light, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLightfv(light, pname, params)
        raise NotImplementedError
    end
    

    def glLineWidth(width)
        raise NotImplementedError
    end
    

    def glLoadIdentity()
        raise NotImplementedError
    end
    

    def glLoadMatrixf(m, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glLoadMatrixf(m)
        raise NotImplementedError
    end
    

    def glLogicOp(opcode)
        raise NotImplementedError
    end
    

    def glMaterialf(face, pname, param)
        raise NotImplementedError
    end
    

    def glMaterialfv(face, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMaterialfv(face, pname, params)
        raise NotImplementedError
    end
    

    def glMatrixMode(mode)
        raise NotImplementedError
    end
    

    def glMultMatrixf(m, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMultMatrixf(m)
        raise NotImplementedError
    end
    

    def glMultiTexCoord4f(target, s, t, r, q)
        raise NotImplementedError
    end
    

    def glNormal3f(nx, ny, nz)
        raise NotImplementedError
    end
    

    def glNormalPointer(type, stride, pointer)
        raise NotImplementedError
    end
    

    def glOrthof(left, right, bottom, top, zNear, zFar)
        raise NotImplementedError
    end
    

    def glPixelStorei(pname, param)
        raise NotImplementedError
    end
    

    def glPointSize(size)
        raise NotImplementedError
    end
    

    def glPolygonOffset(factor, units)
        raise NotImplementedError
    end
    

    def glPopMatrix()
        raise NotImplementedError
    end
    

    def glPushMatrix()
        raise NotImplementedError
    end
    

    def glReadPixels(x, y, width, height, format, type, pixels)
        raise NotImplementedError
    end
    

    def glRotatef(angle, x, y, z)
        raise NotImplementedError
    end
    

    def glRotatex(angle, x, y, z)
        raise NotImplementedError
    end
    

    def glSampleCoverage(value, invert)
        raise NotImplementedError
    end
    

    def glScalef(x, y, z)
        raise NotImplementedError
    end
    

    def glScalex(x, y, z)
        raise NotImplementedError
    end
    

    def glScissor(x, y, width, height)
        raise NotImplementedError
    end
    

    def glShadeModel(mode)
        raise NotImplementedError
    end
    

    def glStencilFunc(func, ref, mask)
        raise NotImplementedError
    end
    

    def glStencilMask(mask)
        raise NotImplementedError
    end
    

    def glStencilOp(fail, zfail, zpass)
        raise NotImplementedError
    end
    

    def glTexCoordPointer(size, type, stride, pointer)
        raise NotImplementedError
    end
    

    def glTexEnvf(target, pname, param)
        raise NotImplementedError
    end
    

    def glTexEnvfv(target, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnvfv(target, pname, params)
        raise NotImplementedError
    end
    

    def glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels)
        raise NotImplementedError
    end
    

    def glTexParameterf(target, pname, param)
        raise NotImplementedError
    end
    

    def glTexParameteri(target, pname, param)
        raise NotImplementedError
    end
    

    def glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels)
        raise NotImplementedError
    end
    

    def glTranslatef(x, y, z)
        raise NotImplementedError
    end
    

    def glVertexPointer(size, type, stride, pointer)
        raise NotImplementedError
    end
    

    def glViewport(x, y, width, height)
        raise NotImplementedError
    end
    

    def glBegin(i)
        raise NotImplementedError
    end
    

    def glEnd()
        raise NotImplementedError
    end
    

    def glVertex3f(f, f2, f3)
        raise NotImplementedError
    end
    

    def glPolygonMode(i, i1)
        raise NotImplementedError
    end
end

module GL10
    GL_ADD = 260
    GL_ALIASED_LINE_WIDTH_RANGE = 33902
    GL_ALIASED_POINT_SIZE_RANGE = 33901
    GL_ALPHA = 6406
    GL_ALPHA_BITS = 3413
    GL_ALPHA_TEST = 3008
    GL_ALWAYS = 519
    GL_AMBIENT = 4608
    GL_AMBIENT_AND_DIFFUSE = 5634
    GL_AND = 5377
    GL_AND_INVERTED = 5380
    GL_AND_REVERSE = 5378
    GL_BACK = 1029
    GL_BLEND = 3042
    GL_BLUE_BITS = 3412
    GL_BYTE = 5120
    GL_CCW = 2305
    GL_CLAMP_TO_EDGE = 33071
    GL_CLEAR = 5376
    GL_COLOR_ARRAY = 32886
    GL_COLOR_BUFFER_BIT = 16384
    GL_COLOR_LOGIC_OP = 3058
    GL_COLOR_MATERIAL = 2903
    GL_COMPRESSED_TEXTURE_FORMATS = 34467
    GL_CONSTANT_ATTENUATION = 4615
    GL_COPY = 5379
    GL_COPY_INVERTED = 5388
    GL_CULL_FACE = 2884
    GL_CW = 2304
    GL_DECAL = 8449
    GL_DECR = 7683
    GL_DEPTH_BITS = 3414
    GL_DEPTH_BUFFER_BIT = 256
    GL_DEPTH_TEST = 2929
    GL_DIFFUSE = 4609
    GL_DITHER = 3024
    GL_DONT_CARE = 4352
    GL_DST_ALPHA = 772
    GL_DST_COLOR = 774
    GL_EMISSION = 5632
    GL_EQUAL = 514
    GL_EQUIV = 5385
    GL_EXP = 2048
    GL_EXP2 = 2049
    GL_EXTENSIONS = 7939
    GL_FALSE = 0
    GL_FASTEST = 4353
    GL_FIXED = 5132
    GL_FLAT = 7424
    GL_FLOAT = 5126
    GL_FOG = 2912
    GL_FOG_COLOR = 2918
    GL_FOG_DENSITY = 2914
    GL_FOG_END = 2916
    GL_FOG_HINT = 3156
    GL_FOG_MODE = 2917
    GL_FOG_START = 2915
    GL_FRONT = 1028
    GL_FRONT_AND_BACK = 1032
    GL_GEQUAL = 518
    GL_GREATER = 516
    GL_GREEN_BITS = 3411
    GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 35739
    GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 35738
    GL_INCR = 7682
    GL_INVALID_ENUM = 1280
    GL_INVALID_OPERATION = 1282
    GL_INVALID_VALUE = 1281
    GL_INVERT = 5386
    GL_KEEP = 7680
    GL_LEQUAL = 515
    GL_LESS = 513
    GL_LIGHT_MODEL_AMBIENT = 2899
    GL_LIGHT_MODEL_TWO_SIDE = 2898
    GL_LIGHT0 = 16384
    GL_LIGHT1 = 16385
    GL_LIGHT2 = 16386
    GL_LIGHT3 = 16387
    GL_LIGHT4 = 16388
    GL_LIGHT5 = 16389
    GL_LIGHT6 = 16390
    GL_LIGHT7 = 16391
    GL_LIGHTING = 2896
    GL_LINE_LOOP = 2
    GL_LINE_SMOOTH = 2848
    GL_LINE_SMOOTH_HINT = 3154
    GL_LINE_STRIP = 3
    GL_LINEAR = 9729
    GL_LINEAR_ATTENUATION = 4616
    GL_LINEAR_MIPMAP_LINEAR = 9987
    GL_LINEAR_MIPMAP_NEAREST = 9985
    GL_LINES = 1
    GL_LUMINANCE = 6409
    GL_LUMINANCE_ALPHA = 6410
    GL_MAX_ELEMENTS_INDICES = 33001
    GL_MAX_ELEMENTS_VERTICES = 33000
    GL_MAX_LIGHTS = 3377
    GL_MAX_MODELVIEW_STACK_DEPTH = 3382
    GL_MAX_PROJECTION_STACK_DEPTH = 3384
    GL_MAX_TEXTURE_SIZE = 3379
    GL_MAX_TEXTURE_STACK_DEPTH = 3385
    GL_MAX_TEXTURE_UNITS = 34018
    GL_MAX_VIEWPORT_DIMS = 3386
    GL_MODELVIEW = 5888
    GL_MODULATE = 8448
    GL_MULTISAMPLE = 32925
    GL_NAND = 5390
    GL_NEAREST = 9728
    GL_NEAREST_MIPMAP_LINEAR = 9986
    GL_NEAREST_MIPMAP_NEAREST = 9984
    GL_NEVER = 512
    GL_NICEST = 4354
    GL_NO_ERROR = 0
    GL_NOOP = 5381
    GL_NOR = 5384
    GL_NORMAL_ARRAY = 32885
    GL_NORMALIZE = 2977
    GL_NOTEQUAL = 517
    GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466
    GL_ONE = 1
    GL_ONE_MINUS_DST_ALPHA = 773
    GL_ONE_MINUS_DST_COLOR = 775
    GL_ONE_MINUS_SRC_ALPHA = 771
    GL_ONE_MINUS_SRC_COLOR = 769
    GL_OR = 5383
    GL_OR_INVERTED = 5389
    GL_OR_REVERSE = 5387
    GL_OUT_OF_MEMORY = 1285
    GL_PACK_ALIGNMENT = 3333
    GL_PALETTE4_R5_G6_B5_OES = 35730
    GL_PALETTE4_RGB5_A1_OES = 35732
    GL_PALETTE4_RGB8_OES = 35728
    GL_PALETTE4_RGBA4_OES = 35731
    GL_PALETTE4_RGBA8_OES = 35729
    GL_PALETTE8_R5_G6_B5_OES = 35735
    GL_PALETTE8_RGB5_A1_OES = 35737
    GL_PALETTE8_RGB8_OES = 35733
    GL_PALETTE8_RGBA4_OES = 35736
    GL_PALETTE8_RGBA8_OES = 35734
    GL_PERSPECTIVE_CORRECTION_HINT = 3152
    GL_POINT_SMOOTH = 2832
    GL_POINT_SMOOTH_HINT = 3153
    GL_POINTS = 0
    GL_POINT_FADE_THRESHOLD_SIZE = 33064
    GL_POINT_SIZE = 2833
    GL_POLYGON_OFFSET_FILL = 32823
    GL_POLYGON_SMOOTH_HINT = 3155
    GL_POSITION = 4611
    GL_PROJECTION = 5889
    GL_QUADRATIC_ATTENUATION = 4617
    GL_RED_BITS = 3410
    GL_RENDERER = 7937
    GL_REPEAT = 10497
    GL_REPLACE = 7681
    GL_RESCALE_NORMAL = 32826
    GL_RGB = 6407
    GL_RGBA = 6408
    GL_SAMPLE_ALPHA_TO_COVERAGE = 32926
    GL_SAMPLE_ALPHA_TO_ONE = 32927
    GL_SAMPLE_COVERAGE = 32928
    GL_SCISSOR_TEST = 3089
    GL_SET = 5391
    GL_SHININESS = 5633
    GL_SHORT = 5122
    GL_SMOOTH = 7425
    GL_SMOOTH_LINE_WIDTH_RANGE = 2850
    GL_SMOOTH_POINT_SIZE_RANGE = 2834
    GL_SPECULAR = 4610
    GL_SPOT_CUTOFF = 4614
    GL_SPOT_DIRECTION = 4612
    GL_SPOT_EXPONENT = 4613
    GL_SRC_ALPHA = 770
    GL_SRC_ALPHA_SATURATE = 776
    GL_SRC_COLOR = 768
    GL_STACK_OVERFLOW = 1283
    GL_STACK_UNDERFLOW = 1284
    GL_STENCIL_BITS = 3415
    GL_STENCIL_BUFFER_BIT = 1024
    GL_STENCIL_TEST = 2960
    GL_SUBPIXEL_BITS = 3408
    GL_TEXTURE = 5890
    GL_TEXTURE_2D = 3553
    GL_TEXTURE_COORD_ARRAY = 32888
    GL_TEXTURE_ENV = 8960
    GL_TEXTURE_ENV_COLOR = 8705
    GL_TEXTURE_ENV_MODE = 8704
    GL_TEXTURE_MAG_FILTER = 10240
    GL_TEXTURE_MIN_FILTER = 10241
    GL_TEXTURE_WRAP_S = 10242
    GL_TEXTURE_WRAP_T = 10243
    GL_TEXTURE0 = 33984
    GL_TEXTURE1 = 33985
    GL_TEXTURE2 = 33986
    GL_TEXTURE3 = 33987
    GL_TEXTURE4 = 33988
    GL_TEXTURE5 = 33989
    GL_TEXTURE6 = 33990
    GL_TEXTURE7 = 33991
    GL_TEXTURE8 = 33992
    GL_TEXTURE9 = 33993
    GL_TEXTURE10 = 33994
    GL_TEXTURE11 = 33995
    GL_TEXTURE12 = 33996
    GL_TEXTURE13 = 33997
    GL_TEXTURE14 = 33998
    GL_TEXTURE15 = 33999
    GL_TEXTURE16 = 34000
    GL_TEXTURE17 = 34001
    GL_TEXTURE18 = 34002
    GL_TEXTURE19 = 34003
    GL_TEXTURE20 = 34004
    GL_TEXTURE21 = 34005
    GL_TEXTURE22 = 34006
    GL_TEXTURE23 = 34007
    GL_TEXTURE24 = 34008
    GL_TEXTURE25 = 34009
    GL_TEXTURE26 = 34010
    GL_TEXTURE27 = 34011
    GL_TEXTURE28 = 34012
    GL_TEXTURE29 = 34013
    GL_TEXTURE30 = 34014
    GL_TEXTURE31 = 34015
    GL_TRIANGLE_FAN = 6
    GL_TRIANGLE_STRIP = 5
    GL_TRIANGLES = 4
    GL_TRUE = 1
    GL_UNPACK_ALIGNMENT = 3317
    GL_UNSIGNED_BYTE = 5121
    GL_UNSIGNED_SHORT = 5123
    GL_UNSIGNED_SHORT_4_4_4_4 = 32819
    GL_UNSIGNED_SHORT_5_5_5_1 = 32820
    GL_UNSIGNED_SHORT_5_6_5 = 33635
    GL_VENDOR = 7936
    GL_VERSION = 7938
    GL_VERTEX_ARRAY = 32884
    GL_XOR = 5382
    GL_ZERO = 0
end


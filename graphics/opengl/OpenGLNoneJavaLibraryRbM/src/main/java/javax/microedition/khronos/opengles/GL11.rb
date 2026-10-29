# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.khronos.opengles

# require "java/nio/Buffer"
# require "java/nio/FloatBuffer"
# require "java/nio/IntBuffer"
require "javax/microedition/khronos/opengles/GL10"

module GL11
    include GL10
    

    def glBindBuffer(target, buffer)
        raise NotImplementedError
    end
    

    def glBufferData(target, size, data, usage)
        raise NotImplementedError
    end
    

    def glBufferSubData(target, offset, size, data)
        raise NotImplementedError
    end
    

    def glClipPlanef(plane, equation, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glClipPlanef(plane, equation)
        raise NotImplementedError
    end
    

    def glColor4ub(red, green, blue, alpha)
        raise NotImplementedError
    end
    

    def glColorPointer(size, type, stride, offset)
        raise NotImplementedError
    end
    

    def glDeleteBuffers(n, buffers, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDeleteBuffers(n, buffers)
        raise NotImplementedError
    end
    

    def glDrawElements(mode, count, type, offset)
        raise NotImplementedError
    end
    

    def glGenBuffers(n, buffers, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGenBuffers(n, buffers)
        raise NotImplementedError
    end
    

    def glGetBufferParameteriv(target, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetBufferParameteriv(target, pname, params)
        raise NotImplementedError
    end
    

    def glGetClipPlanef(pname, eqn, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetClipPlanef(pname, eqn)
        raise NotImplementedError
    end
    

    def glGetFloatv(pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetFloatv(pname, params)
        raise NotImplementedError
    end
    

    def glGetLightfv(light, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetLightfv(light, pname, params)
        raise NotImplementedError
    end
    

    def glGetMaterialfv(face, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetMaterialfv(face, pname, params)
        raise NotImplementedError
    end
    

    def glGetTexEnviv(env, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexEnviv(env, pname, params)
        raise NotImplementedError
    end
    

    def glGetTexParameterfv(target, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexParameterfv(target, pname, params)
        raise NotImplementedError
    end
    

    def glGetTexParameteriv(target, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexParameteriv(target, pname, params)
        raise NotImplementedError
    end
    

    def glIsBuffer(buffer)
        raise NotImplementedError
    end
    

    def glIsEnabled(cap)
        raise NotImplementedError
    end
    

    def glIsTexture(texture)
        raise NotImplementedError
    end
    

    def glNormalPointer(type, stride, offset)
        raise NotImplementedError
    end
    

    def glPointParameterf(pname, param)
        raise NotImplementedError
    end
    

    def glPointParameterfv(pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glPointParameterfv(pname, params)
        raise NotImplementedError
    end
    

    def glTexCoordPointer(size, type, stride, offset)
        raise NotImplementedError
    end
    

    def glTexEnvi(target, pname, param)
        raise NotImplementedError
    end
    

    def glTexEnviv(target, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnviv(target, pname, params)
        raise NotImplementedError
    end
    

    def glTexParameterfv(target, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexParameterfv(target, pname, params)
        raise NotImplementedError
    end
    

    def glTexParameteriv(target, pname, params, offset)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexParameteriv(target, pname, params)
        raise NotImplementedError
    end
    

    def glVertexPointer(size, type, stride, offset)
        raise NotImplementedError
    end
end

module GL11
    GL_ACTIVE_TEXTURE = 34016
    GL_ADD_SIGNED = 34164
    GL_ALPHA_SCALE = 3356
    GL_ALPHA_TEST_FUNC = 3009
    GL_ALPHA_TEST_REF = 3010
    GL_ARRAY_BUFFER = 34962
    GL_ARRAY_BUFFER_BINDING = 34964
    GL_BLEND_DST = 3040
    GL_BLEND_SRC = 3041
    GL_BUFFER_ACCESS = 35003
    GL_BUFFER_SIZE = 34660
    GL_BUFFER_USAGE = 34661
    GL_CLIENT_ACTIVE_TEXTURE = 34017
    GL_CLIP_PLANE0 = 12288
    GL_CLIP_PLANE1 = 12289
    GL_CLIP_PLANE2 = 12290
    GL_CLIP_PLANE3 = 12291
    GL_CLIP_PLANE4 = 12292
    GL_CLIP_PLANE5 = 12293
    GL_COLOR_ARRAY_BUFFER_BINDING = 34968
    GL_COLOR_ARRAY_POINTER = 32912
    GL_COLOR_ARRAY_SIZE = 32897
    GL_COLOR_ARRAY_STRIDE = 32899
    GL_COLOR_ARRAY_TYPE = 32898
    GL_COLOR_CLEAR_VALUE = 3106
    GL_COLOR_WRITEMASK = 3107
    GL_COMBINE = 34160
    GL_COMBINE_ALPHA = 34162
    GL_COMBINE_RGB = 34161
    GL_CONSTANT = 34166
    GL_COORD_REPLACE_OES = 34914
    GL_CULL_FACE_MODE = 2885
    GL_CURRENT_COLOR = 2816
    GL_CURRENT_NORMAL = 2818
    GL_CURRENT_TEXTURE_COORDS = 2819
    GL_DEPTH_CLEAR_VALUE = 2931
    GL_DEPTH_FUNC = 2932
    GL_DEPTH_RANGE = 2928
    GL_DEPTH_WRITEMASK = 2930
    GL_DOT3_RGB = 34478
    GL_DOT3_RGBA = 34479
    GL_DYNAMIC_DRAW = 35048
    GL_ELEMENT_ARRAY_BUFFER = 34963
    GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965
    GL_FRONT_FACE = 2886
    GL_GENERATE_MIPMAP = 33169
    GL_GENERATE_MIPMAP_HINT = 33170
    GL_INTERPOLATE = 34165
    GL_LINE_WIDTH = 2849
    GL_LOGIC_OP_MODE = 3056
    GL_MATRIX_MODE = 2976
    GL_MAX_CLIP_PLANES = 3378
    GL_MODELVIEW_MATRIX = 2982
    GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = 35213
    GL_MODELVIEW_STACK_DEPTH = 2979
    GL_NORMAL_ARRAY_BUFFER_BINDING = 34967
    GL_NORMAL_ARRAY_POINTER = 32911
    GL_NORMAL_ARRAY_STRIDE = 32895
    GL_NORMAL_ARRAY_TYPE = 32894
    GL_OPERAND0_ALPHA = 34200
    GL_OPERAND0_RGB = 34192
    GL_OPERAND1_ALPHA = 34201
    GL_OPERAND1_RGB = 34193
    GL_OPERAND2_ALPHA = 34202
    GL_OPERAND2_RGB = 34194
    GL_POINT_DISTANCE_ATTENUATION = 33065
    GL_POINT_FADE_THRESHOLD_SIZE = 33064
    GL_POINT_SIZE = 2833
    GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 35743
    GL_POINT_SIZE_ARRAY_OES = 35740
    GL_POINT_SIZE_ARRAY_POINTER_OES = 35212
    GL_POINT_SIZE_ARRAY_STRIDE_OES = 35211
    GL_POINT_SIZE_ARRAY_TYPE_OES = 35210
    GL_POINT_SIZE_MAX = 33063
    GL_POINT_SIZE_MIN = 33062
    GL_POINT_SPRITE_OES = 34913
    GL_POLYGON_OFFSET_FACTOR = 32824
    GL_POLYGON_OFFSET_UNITS = 10752
    GL_PREVIOUS = 34168
    GL_PRIMARY_COLOR = 34167
    GL_PROJECTION_MATRIX = 2983
    GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = 35214
    GL_PROJECTION_STACK_DEPTH = 2980
    GL_RGB_SCALE = 34163
    GL_SAMPLE_BUFFERS = 32936
    GL_SAMPLE_COVERAGE_INVERT = 32939
    GL_SAMPLE_COVERAGE_VALUE = 32938
    GL_SAMPLES = 32937
    GL_SCISSOR_BOX = 3088
    GL_SHADE_MODEL = 2900
    GL_SRC0_ALPHA = 34184
    GL_SRC0_RGB = 34176
    GL_SRC1_ALPHA = 34185
    GL_SRC1_RGB = 34177
    GL_SRC2_ALPHA = 34186
    GL_SRC2_RGB = 34178
    GL_STATIC_DRAW = 35044
    GL_STENCIL_CLEAR_VALUE = 2961
    GL_STENCIL_FAIL = 2964
    GL_STENCIL_FUNC = 2962
    GL_STENCIL_PASS_DEPTH_FAIL = 2965
    GL_STENCIL_PASS_DEPTH_PASS = 2966
    GL_STENCIL_REF = 2967
    GL_STENCIL_VALUE_MASK = 2963
    GL_STENCIL_WRITEMASK = 2968
    GL_SUBTRACT = 34023
    GL_TEXTURE_BINDING_2D = 32873
    GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970
    GL_TEXTURE_COORD_ARRAY_POINTER = 32914
    GL_TEXTURE_COORD_ARRAY_SIZE = 32904
    GL_TEXTURE_COORD_ARRAY_STRIDE = 32906
    GL_TEXTURE_COORD_ARRAY_TYPE = 32905
    GL_TEXTURE_MATRIX = 2984
    GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = 35215
    GL_TEXTURE_STACK_DEPTH = 2981
    GL_VERTEX_ARRAY_BUFFER_BINDING = 34966
    GL_VERTEX_ARRAY_POINTER = 32910
    GL_VERTEX_ARRAY_SIZE = 32890
    GL_VERTEX_ARRAY_STRIDE = 32892
    GL_VERTEX_ARRAY_TYPE = 32891
    GL_VIEWPORT = 2978
    GL_WRITE_ONLY = 35001
end


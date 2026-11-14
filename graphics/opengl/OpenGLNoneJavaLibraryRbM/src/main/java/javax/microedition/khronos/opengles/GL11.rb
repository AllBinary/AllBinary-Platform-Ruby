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
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glBufferData(target, size, data, usage)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glBufferSubData(target, offset, size, data)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glClipPlanef(plane, equation, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glClipPlanef(plane, equation)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glColor4ub(red, green, blue, alpha)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glColorPointer(size, type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDeleteBuffers(n, buffers, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDeleteBuffers(n, buffers)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawElements(mode, count, type, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGenBuffers(n, buffers, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGenBuffers(n, buffers)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetBufferParameteriv(target, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetBufferParameteriv(target, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetClipPlanef(pname, eqn, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetClipPlanef(pname, eqn)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetFloatv(pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetFloatv(pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetLightfv(light, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetLightfv(light, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetMaterialfv(face, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetMaterialfv(face, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetTexEnviv(env, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexEnviv(env, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetTexParameterfv(target, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexParameterfv(target, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glGetTexParameteriv(target, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glGetTexParameteriv(target, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glIsBuffer(buffer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glIsEnabled(cap)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glIsTexture(texture)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glNormalPointer(type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPointParameterf(pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glPointParameterfv(pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glPointParameterfv(pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexCoordPointer(size, type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexEnvi(target, pname, param)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexEnviv(target, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexEnviv(target, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexParameterfv(target, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexParameterfv(target, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glTexParameteriv(target, pname, params, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glTexParameteriv(target, pname, params)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glVertexPointer(size, type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:GL_ACTIVE_TEXTURE, 34016)
        const_set(:GL_ADD_SIGNED, 34164)
        const_set(:GL_ALPHA_SCALE, 3356)
        const_set(:GL_ALPHA_TEST_FUNC, 3009)
        const_set(:GL_ALPHA_TEST_REF, 3010)
        const_set(:GL_ARRAY_BUFFER, 34962)
        const_set(:GL_ARRAY_BUFFER_BINDING, 34964)
        const_set(:GL_BLEND_DST, 3040)
        const_set(:GL_BLEND_SRC, 3041)
        const_set(:GL_BUFFER_ACCESS, 35003)
        const_set(:GL_BUFFER_SIZE, 34660)
        const_set(:GL_BUFFER_USAGE, 34661)
        const_set(:GL_CLIENT_ACTIVE_TEXTURE, 34017)
        const_set(:GL_CLIP_PLANE0, 12288)
        const_set(:GL_CLIP_PLANE1, 12289)
        const_set(:GL_CLIP_PLANE2, 12290)
        const_set(:GL_CLIP_PLANE3, 12291)
        const_set(:GL_CLIP_PLANE4, 12292)
        const_set(:GL_CLIP_PLANE5, 12293)
        const_set(:GL_COLOR_ARRAY_BUFFER_BINDING, 34968)
        const_set(:GL_COLOR_ARRAY_POINTER, 32912)
        const_set(:GL_COLOR_ARRAY_SIZE, 32897)
        const_set(:GL_COLOR_ARRAY_STRIDE, 32899)
        const_set(:GL_COLOR_ARRAY_TYPE, 32898)
        const_set(:GL_COLOR_CLEAR_VALUE, 3106)
        const_set(:GL_COLOR_WRITEMASK, 3107)
        const_set(:GL_COMBINE, 34160)
        const_set(:GL_COMBINE_ALPHA, 34162)
        const_set(:GL_COMBINE_RGB, 34161)
        const_set(:GL_CONSTANT, 34166)
        const_set(:GL_COORD_REPLACE_OES, 34914)
        const_set(:GL_CULL_FACE_MODE, 2885)
        const_set(:GL_CURRENT_COLOR, 2816)
        const_set(:GL_CURRENT_NORMAL, 2818)
        const_set(:GL_CURRENT_TEXTURE_COORDS, 2819)
        const_set(:GL_DEPTH_CLEAR_VALUE, 2931)
        const_set(:GL_DEPTH_FUNC, 2932)
        const_set(:GL_DEPTH_RANGE, 2928)
        const_set(:GL_DEPTH_WRITEMASK, 2930)
        const_set(:GL_DOT3_RGB, 34478)
        const_set(:GL_DOT3_RGBA, 34479)
        const_set(:GL_DYNAMIC_DRAW, 35048)
        const_set(:GL_ELEMENT_ARRAY_BUFFER, 34963)
        const_set(:GL_ELEMENT_ARRAY_BUFFER_BINDING, 34965)
        const_set(:GL_FRONT_FACE, 2886)
        const_set(:GL_GENERATE_MIPMAP, 33169)
        const_set(:GL_GENERATE_MIPMAP_HINT, 33170)
        const_set(:GL_INTERPOLATE, 34165)
        const_set(:GL_LINE_WIDTH, 2849)
        const_set(:GL_LOGIC_OP_MODE, 3056)
        const_set(:GL_MATRIX_MODE, 2976)
        const_set(:GL_MAX_CLIP_PLANES, 3378)
        const_set(:GL_MODELVIEW_MATRIX, 2982)
        const_set(:GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES, 35213)
        const_set(:GL_MODELVIEW_STACK_DEPTH, 2979)
        const_set(:GL_NORMAL_ARRAY_BUFFER_BINDING, 34967)
        const_set(:GL_NORMAL_ARRAY_POINTER, 32911)
        const_set(:GL_NORMAL_ARRAY_STRIDE, 32895)
        const_set(:GL_NORMAL_ARRAY_TYPE, 32894)
        const_set(:GL_OPERAND0_ALPHA, 34200)
        const_set(:GL_OPERAND0_RGB, 34192)
        const_set(:GL_OPERAND1_ALPHA, 34201)
        const_set(:GL_OPERAND1_RGB, 34193)
        const_set(:GL_OPERAND2_ALPHA, 34202)
        const_set(:GL_OPERAND2_RGB, 34194)
        const_set(:GL_POINT_DISTANCE_ATTENUATION, 33065)
        const_set(:GL_POINT_FADE_THRESHOLD_SIZE, 33064)
        const_set(:GL_POINT_SIZE, 2833)
        const_set(:GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES, 35743)
        const_set(:GL_POINT_SIZE_ARRAY_OES, 35740)
        const_set(:GL_POINT_SIZE_ARRAY_POINTER_OES, 35212)
        const_set(:GL_POINT_SIZE_ARRAY_STRIDE_OES, 35211)
        const_set(:GL_POINT_SIZE_ARRAY_TYPE_OES, 35210)
        const_set(:GL_POINT_SIZE_MAX, 33063)
        const_set(:GL_POINT_SIZE_MIN, 33062)
        const_set(:GL_POINT_SPRITE_OES, 34913)
        const_set(:GL_POLYGON_OFFSET_FACTOR, 32824)
        const_set(:GL_POLYGON_OFFSET_UNITS, 10752)
        const_set(:GL_PREVIOUS, 34168)
        const_set(:GL_PRIMARY_COLOR, 34167)
        const_set(:GL_PROJECTION_MATRIX, 2983)
        const_set(:GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES, 35214)
        const_set(:GL_PROJECTION_STACK_DEPTH, 2980)
        const_set(:GL_RGB_SCALE, 34163)
        const_set(:GL_SAMPLE_BUFFERS, 32936)
        const_set(:GL_SAMPLE_COVERAGE_INVERT, 32939)
        const_set(:GL_SAMPLE_COVERAGE_VALUE, 32938)
        const_set(:GL_SAMPLES, 32937)
        const_set(:GL_SCISSOR_BOX, 3088)
        const_set(:GL_SHADE_MODEL, 2900)
        const_set(:GL_SRC0_ALPHA, 34184)
        const_set(:GL_SRC0_RGB, 34176)
        const_set(:GL_SRC1_ALPHA, 34185)
        const_set(:GL_SRC1_RGB, 34177)
        const_set(:GL_SRC2_ALPHA, 34186)
        const_set(:GL_SRC2_RGB, 34178)
        const_set(:GL_STATIC_DRAW, 35044)
        const_set(:GL_STENCIL_CLEAR_VALUE, 2961)
        const_set(:GL_STENCIL_FAIL, 2964)
        const_set(:GL_STENCIL_FUNC, 2962)
        const_set(:GL_STENCIL_PASS_DEPTH_FAIL, 2965)
        const_set(:GL_STENCIL_PASS_DEPTH_PASS, 2966)
        const_set(:GL_STENCIL_REF, 2967)
        const_set(:GL_STENCIL_VALUE_MASK, 2963)
        const_set(:GL_STENCIL_WRITEMASK, 2968)
        const_set(:GL_SUBTRACT, 34023)
        const_set(:GL_TEXTURE_BINDING_2D, 32873)
        const_set(:GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING, 34970)
        const_set(:GL_TEXTURE_COORD_ARRAY_POINTER, 32914)
        const_set(:GL_TEXTURE_COORD_ARRAY_SIZE, 32904)
        const_set(:GL_TEXTURE_COORD_ARRAY_STRIDE, 32906)
        const_set(:GL_TEXTURE_COORD_ARRAY_TYPE, 32905)
        const_set(:GL_TEXTURE_MATRIX, 2984)
        const_set(:GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES, 35215)
        const_set(:GL_TEXTURE_STACK_DEPTH, 2981)
        const_set(:GL_VERTEX_ARRAY_BUFFER_BINDING, 34966)
        const_set(:GL_VERTEX_ARRAY_POINTER, 32910)
        const_set(:GL_VERTEX_ARRAY_SIZE, 32890)
        const_set(:GL_VERTEX_ARRAY_STRIDE, 32892)
        const_set(:GL_VERTEX_ARRAY_TYPE, 32891)
        const_set(:GL_VIEWPORT, 2978)
        const_set(:GL_WRITE_ONLY, 35001)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GL11"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:GL_ACTIVE_TEXTURE, :GL_ADD_SIGNED, :GL_ALPHA_SCALE, :GL_ALPHA_TEST_FUNC, :GL_ALPHA_TEST_REF, :GL_ARRAY_BUFFER, :GL_ARRAY_BUFFER_BINDING, :GL_BLEND_DST, :GL_BLEND_SRC, :GL_BUFFER_ACCESS, :GL_BUFFER_SIZE, :GL_BUFFER_USAGE, :GL_CLIENT_ACTIVE_TEXTURE, :GL_CLIP_PLANE0, :GL_CLIP_PLANE1, :GL_CLIP_PLANE2, :GL_CLIP_PLANE3, :GL_CLIP_PLANE4, :GL_CLIP_PLANE5, :GL_COLOR_ARRAY_BUFFER_BINDING, :GL_COLOR_ARRAY_POINTER, :GL_COLOR_ARRAY_SIZE, :GL_COLOR_ARRAY_STRIDE, :GL_COLOR_ARRAY_TYPE, :GL_COLOR_CLEAR_VALUE, :GL_COLOR_WRITEMASK, :GL_COMBINE, :GL_COMBINE_ALPHA, :GL_COMBINE_RGB, :GL_CONSTANT, :GL_COORD_REPLACE_OES, :GL_CULL_FACE_MODE, :GL_CURRENT_COLOR, :GL_CURRENT_NORMAL, :GL_CURRENT_TEXTURE_COORDS, :GL_DEPTH_CLEAR_VALUE, :GL_DEPTH_FUNC, :GL_DEPTH_RANGE, :GL_DEPTH_WRITEMASK, :GL_DOT3_RGB, :GL_DOT3_RGBA, :GL_DYNAMIC_DRAW, :GL_ELEMENT_ARRAY_BUFFER, :GL_ELEMENT_ARRAY_BUFFER_BINDING, :GL_FRONT_FACE, :GL_GENERATE_MIPMAP, :GL_GENERATE_MIPMAP_HINT, :GL_INTERPOLATE, :GL_LINE_WIDTH, :GL_LOGIC_OP_MODE, :GL_MATRIX_MODE, :GL_MAX_CLIP_PLANES, :GL_MODELVIEW_MATRIX, :GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES, :GL_MODELVIEW_STACK_DEPTH, :GL_NORMAL_ARRAY_BUFFER_BINDING, :GL_NORMAL_ARRAY_POINTER, :GL_NORMAL_ARRAY_STRIDE, :GL_NORMAL_ARRAY_TYPE, :GL_OPERAND0_ALPHA, :GL_OPERAND0_RGB, :GL_OPERAND1_ALPHA, :GL_OPERAND1_RGB, :GL_OPERAND2_ALPHA, :GL_OPERAND2_RGB, :GL_POINT_DISTANCE_ATTENUATION, :GL_POINT_FADE_THRESHOLD_SIZE, :GL_POINT_SIZE, :GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES, :GL_POINT_SIZE_ARRAY_OES, :GL_POINT_SIZE_ARRAY_POINTER_OES, :GL_POINT_SIZE_ARRAY_STRIDE_OES, :GL_POINT_SIZE_ARRAY_TYPE_OES, :GL_POINT_SIZE_MAX, :GL_POINT_SIZE_MIN, :GL_POINT_SPRITE_OES, :GL_POLYGON_OFFSET_FACTOR, :GL_POLYGON_OFFSET_UNITS, :GL_PREVIOUS, :GL_PRIMARY_COLOR, :GL_PROJECTION_MATRIX, :GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES, :GL_PROJECTION_STACK_DEPTH, :GL_RGB_SCALE, :GL_SAMPLE_BUFFERS, :GL_SAMPLE_COVERAGE_INVERT, :GL_SAMPLE_COVERAGE_VALUE, :GL_SAMPLES, :GL_SCISSOR_BOX, :GL_SHADE_MODEL, :GL_SRC0_ALPHA, :GL_SRC0_RGB, :GL_SRC1_ALPHA, :GL_SRC1_RGB, :GL_SRC2_ALPHA, :GL_SRC2_RGB, :GL_STATIC_DRAW, :GL_STENCIL_CLEAR_VALUE, :GL_STENCIL_FAIL, :GL_STENCIL_FUNC, :GL_STENCIL_PASS_DEPTH_FAIL, :GL_STENCIL_PASS_DEPTH_PASS, :GL_STENCIL_REF, :GL_STENCIL_VALUE_MASK, :GL_STENCIL_WRITEMASK, :GL_SUBTRACT, :GL_TEXTURE_BINDING_2D, :GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING, :GL_TEXTURE_COORD_ARRAY_POINTER, :GL_TEXTURE_COORD_ARRAY_SIZE, :GL_TEXTURE_COORD_ARRAY_STRIDE, :GL_TEXTURE_COORD_ARRAY_TYPE, :GL_TEXTURE_MATRIX, :GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES, :GL_TEXTURE_STACK_DEPTH, :GL_VERTEX_ARRAY_BUFFER_BINDING, :GL_VERTEX_ARRAY_POINTER, :GL_VERTEX_ARRAY_SIZE, :GL_VERTEX_ARRAY_STRIDE, :GL_VERTEX_ARRAY_TYPE, :GL_VIEWPORT, :GL_WRITE_ONLY].include?(name)
        end
        super
    end
end

begin
    GL11.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


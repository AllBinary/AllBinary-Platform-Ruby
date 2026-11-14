# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.khronos.opengles

# require "java/nio/Buffer"
# require "java/nio/FloatBuffer"
# require "java/nio/IntBuffer"
# require "java/nio/ShortBuffer"
require "javax/microedition/khronos/opengles/GL"

module GL11Ext
    include GL
    

    def glTexParameterfv(target, pname, param, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glCurrentPaletteMatrixOES(matrixpaletteindex)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexfOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexfvOES(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDrawTexfvOES(coords)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexiOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexivOES(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDrawTexivOES(coords)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexsOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexsvOES(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDrawTexsvOES(coords)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexxOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexxvOES(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glDrawTexxvOES(coords)
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
    

    def glLoadPaletteFromModelViewMatrixOES()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glMatrixIndexPointerOES(size, type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glMatrixIndexPointerOES(size, type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glWeightPointerOES(size, type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def glWeightPointerOES(size, type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES, 35742)
        const_set(:GL_MATRIX_INDEX_ARRAY_OES, 34884)
        const_set(:GL_MATRIX_INDEX_ARRAY_POINTER_OES, 34889)
        const_set(:GL_MATRIX_INDEX_ARRAY_SIZE_OES, 34886)
        const_set(:GL_MATRIX_INDEX_ARRAY_STRIDE_OES, 34888)
        const_set(:GL_MATRIX_INDEX_ARRAY_TYPE_OES, 34887)
        const_set(:GL_MATRIX_PALETTE_OES, 34880)
        const_set(:GL_MAX_PALETTE_MATRICES_OES, 34882)
        const_set(:GL_MAX_VERTEX_UNITS_OES, 34468)
        const_set(:GL_TEXTURE_CROP_RECT_OES, 35741)
        const_set(:GL_WEIGHT_ARRAY_BUFFER_BINDING_OES, 34974)
        const_set(:GL_WEIGHT_ARRAY_OES, 34477)
        const_set(:GL_WEIGHT_ARRAY_POINTER_OES, 34476)
        const_set(:GL_WEIGHT_ARRAY_SIZE_OES, 34475)
        const_set(:GL_WEIGHT_ARRAY_STRIDE_OES, 34474)
        const_set(:GL_WEIGHT_ARRAY_TYPE_OES, 34473)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GL11Ext"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES, :GL_MATRIX_INDEX_ARRAY_OES, :GL_MATRIX_INDEX_ARRAY_POINTER_OES, :GL_MATRIX_INDEX_ARRAY_SIZE_OES, :GL_MATRIX_INDEX_ARRAY_STRIDE_OES, :GL_MATRIX_INDEX_ARRAY_TYPE_OES, :GL_MATRIX_PALETTE_OES, :GL_MAX_PALETTE_MATRICES_OES, :GL_MAX_VERTEX_UNITS_OES, :GL_TEXTURE_CROP_RECT_OES, :GL_WEIGHT_ARRAY_BUFFER_BINDING_OES, :GL_WEIGHT_ARRAY_OES, :GL_WEIGHT_ARRAY_POINTER_OES, :GL_WEIGHT_ARRAY_SIZE_OES, :GL_WEIGHT_ARRAY_STRIDE_OES, :GL_WEIGHT_ARRAY_TYPE_OES].include?(name)
        end
        super
    end
end

begin
    GL11Ext.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end


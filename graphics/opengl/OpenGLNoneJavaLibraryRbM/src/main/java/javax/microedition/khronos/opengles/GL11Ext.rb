# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.khronos.opengles

require "java/lang/JavaOverload"
# require "java/nio/Buffer"
# require "java/nio/FloatBuffer"
# require "java/nio/IntBuffer"
# require "java/nio/ShortBuffer"
require "javax/microedition/khronos/opengles/GL"

module ::Javax; module Microedition; module Khronos; module Opengles

module GL11Ext
    include GL
    

    def glTexParameterfv(target, pname, param, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glTexParameterfv, 4
    

    def glCurrentPaletteMatrixOES(matrixpaletteindex)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glCurrentPaletteMatrixOES, 1
    

    def glDrawTexfOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glDrawTexfOES, 5
    

    def glDrawTexfvOES_j2(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexfvOES_j1(coords)
        return super if defined?(super)
        raise NotImplementedError
    end

    def glDrawTexfvOES(*java_overload_args)
        return glDrawTexfvOES_j2(*java_overload_args) if java_overload_args.length == 2
        return glDrawTexfvOES_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glDrawTexfvOES takes #{java_overload_args.length} arguments"
    end
    

    def glDrawTexiOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glDrawTexiOES, 5
    

    def glDrawTexivOES_j2(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexivOES_j1(coords)
        return super if defined?(super)
        raise NotImplementedError
    end

    def glDrawTexivOES(*java_overload_args)
        return glDrawTexivOES_j2(*java_overload_args) if java_overload_args.length == 2
        return glDrawTexivOES_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glDrawTexivOES takes #{java_overload_args.length} arguments"
    end
    

    def glDrawTexsOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glDrawTexsOES, 5
    

    def glDrawTexsvOES_j2(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexsvOES_j1(coords)
        return super if defined?(super)
        raise NotImplementedError
    end

    def glDrawTexsvOES(*java_overload_args)
        return glDrawTexsvOES_j2(*java_overload_args) if java_overload_args.length == 2
        return glDrawTexsvOES_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glDrawTexsvOES takes #{java_overload_args.length} arguments"
    end
    

    def glDrawTexxOES(x, y, z, width, height)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glDrawTexxOES, 5
    

    def glDrawTexxvOES_j2(coords, offset)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glDrawTexxvOES_j1(coords)
        return super if defined?(super)
        raise NotImplementedError
    end

    def glDrawTexxvOES(*java_overload_args)
        return glDrawTexxvOES_j2(*java_overload_args) if java_overload_args.length == 2
        return glDrawTexxvOES_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method glDrawTexxvOES takes #{java_overload_args.length} arguments"
    end
    

    def glEnable(cap)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glEnable, 1
    

    def glEnableClientState(array)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glEnableClientState, 1
    

    def glLoadPaletteFromModelViewMatrixOES()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :glLoadPaletteFromModelViewMatrixOES, 0
    

    def glMatrixIndexPointerOES_j4_1(size, type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glMatrixIndexPointerOES_j4_2(size, type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end

    def glMatrixIndexPointerOES(*java_overload_args)
        return glMatrixIndexPointerOES_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method glMatrixIndexPointerOES takes #{java_overload_args.length} arguments"
    end

    def glMatrixIndexPointerOES_j4(*java_overload_args)
        return glMatrixIndexPointerOES_j4_1(*java_overload_args) if true && java_overload_args[0].is_a?(::Integer) && java_overload_args[1].is_a?(::Integer) && java_overload_args[2].is_a?(::Integer) && !(java_overload_args[3].is_a?(::Numeric) || java_overload_args[3] == true || java_overload_args[3] == false || java_overload_args[3].is_a?(::Array))
        return glMatrixIndexPointerOES_j4_2(*java_overload_args)
    end
    

    def glWeightPointerOES_j4_1(size, type, stride, pointer)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def glWeightPointerOES_j4_2(size, type, stride, offset)
        return super if defined?(super)
        raise NotImplementedError
    end

    def glWeightPointerOES(*java_overload_args)
        return glWeightPointerOES_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method glWeightPointerOES takes #{java_overload_args.length} arguments"
    end

    def glWeightPointerOES_j4(*java_overload_args)
        return glWeightPointerOES_j4_1(*java_overload_args) if true && java_overload_args[0].is_a?(::Integer) && java_overload_args[1].is_a?(::Integer) && java_overload_args[2].is_a?(::Integer) && !(java_overload_args[3].is_a?(::Numeric) || java_overload_args[3] == true || java_overload_args[3] == false || java_overload_args[3].is_a?(::Array))
        return glWeightPointerOES_j4_2(*java_overload_args)
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

end; end; end; end

